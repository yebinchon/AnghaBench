
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vstusb_device {int kref; int lock; int submitted; scalar_t__ present; } ;
struct usb_interface {int dummy; } ;


 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct vstusb_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usb_vstusb_class ;
 int vstusb_delete ;

__attribute__((used)) static void vstusb_disconnect(struct usb_interface *intf)
{
 struct vstusb_device *vstdev = usb_get_intfdata(intf);

 usb_deregister_dev(intf, &usb_vstusb_class);
 usb_set_intfdata(intf, ((void*)0));

 if (vstdev) {

  mutex_lock(&vstdev->lock);
  vstdev->present = 0;

  usb_kill_anchored_urbs(&vstdev->submitted);

  mutex_unlock(&vstdev->lock);

  kref_put(&vstdev->kref, vstusb_delete);
 }

}
