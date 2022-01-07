
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_idmouse {int lock; int open; scalar_t__ present; } ;


 int dev_info (int *,char*) ;
 int idmouse_class ;
 int idmouse_delete (struct usb_idmouse*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_disc_mutex ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct usb_idmouse* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void idmouse_disconnect(struct usb_interface *interface)
{
 struct usb_idmouse *dev;


 dev = usb_get_intfdata(interface);


 usb_deregister_dev(interface, &idmouse_class);

 mutex_lock(&open_disc_mutex);
 usb_set_intfdata(interface, ((void*)0));

 mutex_lock(&dev->lock);
 mutex_unlock(&open_disc_mutex);


 dev->present = 0;


 if (!dev->open) {
  mutex_unlock(&dev->lock);
  idmouse_delete(dev);
 } else {

  mutex_unlock(&dev->lock);
 }

 dev_info(&interface->dev, "disconnected\n");
}
