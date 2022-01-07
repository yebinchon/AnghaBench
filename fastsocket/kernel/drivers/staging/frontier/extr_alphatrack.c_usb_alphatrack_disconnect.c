
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int minor; int dev; } ;
struct usb_alphatrack {int writes_pending; int sem; int * intf; int open_count; } ;


 scalar_t__ USB_ALPHATRACK_MINOR_BASE ;
 int atomic_set (int *,int ) ;
 int dev_info (int *,char*,scalar_t__) ;
 int disconnect_mutex ;
 int down (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up (int *) ;
 int usb_alphatrack_class ;
 int usb_alphatrack_delete (struct usb_alphatrack*) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct usb_alphatrack* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void usb_alphatrack_disconnect(struct usb_interface *intf)
{
 struct usb_alphatrack *dev;
 int minor;

 mutex_lock(&disconnect_mutex);

 dev = usb_get_intfdata(intf);
 usb_set_intfdata(intf, ((void*)0));

 down(&dev->sem);

 minor = intf->minor;


 usb_deregister_dev(intf, &usb_alphatrack_class);


 if (!dev->open_count) {
  up(&dev->sem);
  usb_alphatrack_delete(dev);
 } else {
  dev->intf = ((void*)0);
  up(&dev->sem);
 }

 atomic_set(&dev->writes_pending, 0);
 mutex_unlock(&disconnect_mutex);

 dev_info(&intf->dev, "Alphatrack Surface #%d now disconnected\n",
   (minor - USB_ALPHATRACK_MINOR_BASE));
}
