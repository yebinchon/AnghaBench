
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_onetouch {int is_open; TYPE_1__* irq; int udev; } ;
struct input_dev {int dev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 struct usb_onetouch* input_get_drvdata (struct input_dev*) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int usb_onetouch_open(struct input_dev *dev)
{
 struct usb_onetouch *onetouch = input_get_drvdata(dev);

 onetouch->is_open = 1;
 onetouch->irq->dev = onetouch->udev;
 if (usb_submit_urb(onetouch->irq, GFP_KERNEL)) {
  dev_err(&dev->dev, "usb_submit_urb failed\n");
  return -EIO;
 }

 return 0;
}
