
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld_usb {int open_count; int mutex; scalar_t__ interrupt_out_busy; int write_wait; int * intf; } ;
struct inode {int dummy; } ;
struct file {struct ld_usb* private_data; } ;


 int ENODEV ;
 int ERESTARTSYS ;
 int HZ ;
 int ld_usb_abort_transfers (struct ld_usb*) ;
 int ld_usb_delete (struct ld_usb*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int ld_usb_release(struct inode *inode, struct file *file)
{
 struct ld_usb *dev;
 int retval = 0;

 dev = file->private_data;

 if (dev == ((void*)0)) {
  retval = -ENODEV;
  goto exit;
 }

 if (mutex_lock_interruptible(&dev->mutex)) {
  retval = -ERESTARTSYS;
  goto exit;
 }

 if (dev->open_count != 1) {
  retval = -ENODEV;
  goto unlock_exit;
 }
 if (dev->intf == ((void*)0)) {

  mutex_unlock(&dev->mutex);

  ld_usb_delete(dev);
  goto exit;
 }


 if (dev->interrupt_out_busy)
  wait_event_interruptible_timeout(dev->write_wait, !dev->interrupt_out_busy, 2 * HZ);
 ld_usb_abort_transfers(dev);
 dev->open_count = 0;

unlock_exit:
 mutex_unlock(&dev->mutex);

exit:
 return retval;
}
