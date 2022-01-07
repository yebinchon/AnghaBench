
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int kref; int submitted; int io_mutex; int * interface; } ;
struct usb_interface {int minor; int dev; } ;


 int dev_info (int *,char*,int) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skel_class ;
 int skel_delete ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct usb_skel* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void skel_disconnect(struct usb_interface *interface)
{
 struct usb_skel *dev;
 int minor = interface->minor;

 dev = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));


 usb_deregister_dev(interface, &skel_class);


 mutex_lock(&dev->io_mutex);
 dev->interface = ((void*)0);
 mutex_unlock(&dev->io_mutex);

 usb_kill_anchored_urbs(&dev->submitted);


 kref_put(&dev->kref, skel_delete);

 dev_info(&interface->dev, "USB Skeleton #%d now disconnected", minor);
}
