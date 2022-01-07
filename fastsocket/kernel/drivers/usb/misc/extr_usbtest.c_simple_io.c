
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtest_dev {int dummy; } ;
struct usb_device {int dev; } ;
struct urb {int transfer_buffer_length; int status; int pipe; struct usb_device* dev; struct completion* context; } ;
struct completion {int dummy; } ;


 int GFP_KERNEL ;
 int dev_err (int *,char*,char const*,int,int,int) ;
 int init_completion (struct completion*) ;
 int simple_check_buf (struct usbtest_dev*,struct urb*) ;
 int simple_fill_buf (struct urb*) ;
 scalar_t__ usb_pipein (int ) ;
 scalar_t__ usb_pipeout (int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wait_for_completion (struct completion*) ;

__attribute__((used)) static int simple_io (
 struct usbtest_dev *tdev,
 struct urb *urb,
 int iterations,
 int vary,
 int expected,
 const char *label
)
{
 struct usb_device *udev = urb->dev;
 int max = urb->transfer_buffer_length;
 struct completion completion;
 int retval = 0;

 urb->context = &completion;
 while (retval == 0 && iterations-- > 0) {
  init_completion (&completion);
  if (usb_pipeout (urb->pipe))
   simple_fill_buf (urb);
  if ((retval = usb_submit_urb (urb, GFP_KERNEL)) != 0)
   break;


  wait_for_completion (&completion);
  retval = urb->status;
  urb->dev = udev;
  if (retval == 0 && usb_pipein (urb->pipe))
   retval = simple_check_buf(tdev, urb);

  if (vary) {
   int len = urb->transfer_buffer_length;

   len += vary;
   len %= max;
   if (len == 0)
    len = (vary < max) ? vary : max;
   urb->transfer_buffer_length = len;
  }


 }
 urb->transfer_buffer_length = max;

 if (expected != retval)
  dev_err(&udev->dev,
   "%s failed, iterations left %d, status %d (not %d)\n",
    label, iterations, retval, expected);
 return retval;
}
