
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_onetouch {scalar_t__ is_open; int irq; } ;
struct input_dev {int dummy; } ;


 struct usb_onetouch* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void usb_onetouch_close(struct input_dev *dev)
{
 struct usb_onetouch *onetouch = input_get_drvdata(dev);

 usb_kill_urb(onetouch->irq);
 onetouch->is_open = 0;
}
