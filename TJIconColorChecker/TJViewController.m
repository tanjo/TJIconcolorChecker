//
//  TJViewController.m
//

#import "TJViewController.h"

@interface TJViewController ()
@property (nonatomic) NSUInteger status;
@end

@implementation TJViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  _status = 0;
  _imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
  _imageView.image = [UIImage imageNamed:@"test-image-png-8"];
  _imageView.tag = 1122;
  _imageView.userInteractionEnabled = YES;
  _textView  = [[UITextView alloc] init];
  _textView.tag = 1121;
  _textView.userInteractionEnabled = YES;
  [_textView setCenter:CGPointMake(5, 20)];
  
  [self.view addSubview:_imageView];
  [self.view addSubview:_textView];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
  UITouch *touch = [[event allTouches] anyObject];
  if (touch.view.tag == _imageView.tag) {
    [self click:_imageView];
  } else if (touch.view.tag == _textView.tag) {
    [self click:_textView];
  }
}

- (IBAction)click:(id)sender
{
  UIImage *image;
  switch (_status) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      image = [UIImage imageNamed:@"test-image-png-8"];
      [_textView setText:@"test-image-png-8"];
      break;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      image = [UIImage imageNamed:@"test-image-png-24"];
      [_textView setText:@"test-image-png-24"];
      break;
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      image = [UIImage imageNamed:@"test-image-gray-png-8"];
      [_textView setText:@"test-image-gray-png-8"];
      break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
      image = [UIImage imageNamed:@"test-image-gray-png-24"];
      [_textView setText:@"test-image-gray-png-24"];
      break;
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
      image = [UIImage imageNamed:@"test-image-chroma-green-png-8"];
      [_textView setText:@"test-image-chroma-green-png-8"];
      break;
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
      image = [UIImage imageNamed:@"test-image-chroma-green-png-24"];
      [_textView setText:@"test-image-chroma-green-png-24"];
      break;
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
      image = [UIImage imageNamed:@"test-image-png-8"];
      [_textView setText:@"test-image-png-8"];
      _status = -1;
      break;
  }
  [_textView sizeToFit];
  switch (_status % 6) {
    case 0:
      _imageView.tintColor = [UIColor blueColor];
      _imageView.image = image;
      break;
    case 1:
      _imageView.tintColor = [UIColor blueColor];
      _imageView.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
      break;
    case 2:
      _imageView.tintColor = [UIColor redColor];
      _imageView.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
      break;
    case 3:
      _imageView.tintColor = [UIColor greenColor];
      _imageView.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
      break;
    case 4:
      _imageView.tintColor = [UIColor blackColor];
      _imageView.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
      break;
    case 5:
      _imageView.tintColor = [UIColor whiteColor];
      _imageView.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
      break;
    default:
      break;
  }
  _status++;
}

@end
