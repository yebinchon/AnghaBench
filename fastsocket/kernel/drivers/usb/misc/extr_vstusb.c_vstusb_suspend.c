
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vstusb_device {int lock; int submitted; } ;
struct usb_interface {int dummy; } ;
typedef int pm_message_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vstusb_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_wait_anchor_empty_timeout (int *,int) ;

__attribute__((used)) static int vstusb_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct vstusb_device *vstdev = usb_get_intfdata(intf);
 int time;
 if (!vstdev)
  return 0;

 mutex_lock(&vstdev->lock);
 time = usb_wait_anchor_empty_timeout(&vstdev->submitted, 1000);
 if (!time)
  usb_kill_anchored_urbs(&vstdev->submitted);
 mutex_unlock(&vstdev->lock);

 return 0;
}
