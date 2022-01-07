
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct iowarrior {int minor; int write_wait; int read_wait; int int_in_urb; scalar_t__ opened; int mutex; scalar_t__ present; } ;


 scalar_t__ IOWARRIOR_MINOR_BASE ;
 int dev_info (int *,char*,scalar_t__) ;
 int iowarrior_class ;
 int iowarrior_delete (struct iowarrior*) ;
 int iowarrior_open_disc_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct iowarrior* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void iowarrior_disconnect(struct usb_interface *interface)
{
 struct iowarrior *dev;
 int minor;

 dev = usb_get_intfdata(interface);
 mutex_lock(&iowarrior_open_disc_lock);
 usb_set_intfdata(interface, ((void*)0));

 minor = dev->minor;


 usb_deregister_dev(interface, &iowarrior_class);

 mutex_lock(&dev->mutex);


 dev->present = 0;

 mutex_unlock(&dev->mutex);
 mutex_unlock(&iowarrior_open_disc_lock);

 if (dev->opened) {




  usb_kill_urb(dev->int_in_urb);
  wake_up_interruptible(&dev->read_wait);
  wake_up_interruptible(&dev->write_wait);
 } else {

  iowarrior_delete(dev);
 }

 dev_info(&interface->dev, "I/O-Warror #%d now disconnected\n",
   minor - IOWARRIOR_MINOR_BASE);
}
