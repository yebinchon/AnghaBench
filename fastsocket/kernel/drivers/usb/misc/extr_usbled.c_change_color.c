
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_led {TYPE_1__* udev; scalar_t__ green; scalar_t__ red; scalar_t__ blue; } ;
struct TYPE_3__ {int dev; } ;


 unsigned char BLUE ;
 int GFP_KERNEL ;
 unsigned char GREEN ;
 unsigned char RED ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_err (int *,char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int usb_control_msg (TYPE_1__*,int ,int,int,int,int,unsigned char*,int,int) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static void change_color(struct usb_led *led)
{
 int retval;
 unsigned char color = 0x07;
 unsigned char *buffer;

 buffer = kmalloc(8, GFP_KERNEL);
 if (!buffer) {
  dev_err(&led->udev->dev, "out of memory\n");
  return;
 }

 if (led->blue)
  color &= ~(BLUE);
 if (led->red)
  color &= ~(RED);
 if (led->green)
  color &= ~(GREEN);
 dev_dbg(&led->udev->dev,
  "blue = %d, red = %d, green = %d, color = %.2x\n",
  led->blue, led->red, led->green, color);

 retval = usb_control_msg(led->udev,
    usb_sndctrlpipe(led->udev, 0),
    0x12,
    0xc8,
    (0x02 * 0x100) + 0x0a,
    (0x00 * 0x100) + color,
    buffer,
    8,
    2000);
 if (retval)
  dev_dbg(&led->udev->dev, "retval = %d\n", retval);
 kfree(buffer);
}
