
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtest_dev {int dummy; } ;
struct usb_interface {int dev; } ;


 int dev_dbg (int *,char*) ;
 int kfree (struct usbtest_dev*) ;
 struct usbtest_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void usbtest_disconnect (struct usb_interface *intf)
{
 struct usbtest_dev *dev = usb_get_intfdata (intf);

 usb_set_intfdata (intf, ((void*)0));
 dev_dbg (&intf->dev, "disconnect\n");
 kfree (dev);
}
