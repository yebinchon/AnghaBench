
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_tranzport {int sem; int * intf; int open_count; } ;
struct usb_interface {int minor; int dev; } ;


 scalar_t__ USB_TRANZPORT_MINOR_BASE ;
 int dev_info (int *,char*,scalar_t__) ;
 int disconnect_mutex ;
 int down (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up (int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct usb_tranzport* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usb_tranzport_class ;
 int usb_tranzport_delete (struct usb_tranzport*) ;

__attribute__((used)) static void usb_tranzport_disconnect(struct usb_interface *intf)
{
 struct usb_tranzport *dev;
 int minor;
 mutex_lock(&disconnect_mutex);
 dev = usb_get_intfdata(intf);
 usb_set_intfdata(intf, ((void*)0));
 down(&dev->sem);
 minor = intf->minor;

 usb_deregister_dev(intf, &usb_tranzport_class);


 if (!dev->open_count) {
  up(&dev->sem);
  usb_tranzport_delete(dev);
 } else {
  dev->intf = ((void*)0);
  up(&dev->sem);
 }

 mutex_unlock(&disconnect_mutex);

 dev_info(&intf->dev, "Tranzport Surface #%d now disconnected\n",
  (minor - USB_TRANZPORT_MINOR_BASE));
}
