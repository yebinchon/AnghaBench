
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_alphatrack {int open_count; int sem; scalar_t__ interrupt_out_busy; int write_wait; int * intf; } ;
struct inode {int dummy; } ;
struct file {struct usb_alphatrack* private_data; } ;


 int ENODEV ;
 int ERESTARTSYS ;
 int HZ ;
 scalar_t__ down_interruptible (int *) ;
 int up (int *) ;
 int usb_alphatrack_abort_transfers (struct usb_alphatrack*) ;
 int usb_alphatrack_delete (struct usb_alphatrack*) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int usb_alphatrack_release(struct inode *inode, struct file *file)
{
 struct usb_alphatrack *dev;
 int retval = 0;

 dev = file->private_data;

 if (dev == ((void*)0)) {
  retval = -ENODEV;
  goto exit;
 }

 if (down_interruptible(&dev->sem)) {
  retval = -ERESTARTSYS;
  goto exit;
 }

 if (dev->open_count != 1) {
  retval = -ENODEV;
  goto unlock_exit;
 }

 if (dev->intf == ((void*)0)) {

  up(&dev->sem);

  usb_alphatrack_delete(dev);
  retval = -ENODEV;
  goto exit;
 }


 if (dev->interrupt_out_busy)
  wait_event_interruptible_timeout(dev->write_wait,
       !dev->interrupt_out_busy,
       2 * HZ);
 usb_alphatrack_abort_transfers(dev);
 dev->open_count = 0;

unlock_exit:
 up(&dev->sem);

exit:
 return retval;
}
