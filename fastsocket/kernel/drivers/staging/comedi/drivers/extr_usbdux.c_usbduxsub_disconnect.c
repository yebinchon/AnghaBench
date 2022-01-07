
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsub {int sem; struct usb_device* usbdev; } ;
struct usb_interface {int dev; } ;
struct usb_device {int dummy; } ;


 int comedi_usb_auto_unconfig (struct usb_device*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int down (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int start_stop_sem ;
 int tidy_up (struct usbduxsub*) ;
 int up (int *) ;
 struct usbduxsub* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void usbduxsub_disconnect(struct usb_interface *intf)
{
 struct usbduxsub *usbduxsub_tmp = usb_get_intfdata(intf);
 struct usb_device *udev = interface_to_usbdev(intf);

 if (!usbduxsub_tmp) {
  dev_err(&intf->dev,
   "comedi_: disconnect called with null pointer.\n");
  return;
 }
 if (usbduxsub_tmp->usbdev != udev) {
  dev_err(&intf->dev, "comedi_: BUG! called with wrong ptr!!!\n");
  return;
 }
 comedi_usb_auto_unconfig(udev);
 down(&start_stop_sem);
 down(&usbduxsub_tmp->sem);
 tidy_up(usbduxsub_tmp);
 up(&usbduxsub_tmp->sem);
 up(&start_stop_sem);
 dev_dbg(&intf->dev, "comedi_: disconnected from the usb\n");
}
