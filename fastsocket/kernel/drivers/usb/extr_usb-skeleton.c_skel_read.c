
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int ongoing_read; size_t bulk_in_copied; int processed_urb; int errors; size_t bulk_in_filled; size_t bulk_in_buffer; int io_mutex; int bulk_in_completion; int err_lock; int interface; int bulk_in_urb; } ;
struct file {int f_flags; scalar_t__ private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EAGAIN ;
 int EFAULT ;
 int EIO ;
 int ENODEV ;
 int EPIPE ;
 int O_NONBLOCK ;
 scalar_t__ copy_to_user (char*,size_t,size_t) ;
 size_t min (size_t,size_t) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int skel_do_read_io (struct usb_skel*,size_t) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_completion (int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static ssize_t skel_read(struct file *file, char *buffer, size_t count,
    loff_t *ppos)
{
 struct usb_skel *dev;
 int rv;
 bool ongoing_io;

 dev = (struct usb_skel *)file->private_data;


 if (!dev->bulk_in_urb || !count)
  return 0;


 rv = mutex_lock_interruptible(&dev->io_mutex);
 if (rv < 0)
  return rv;

 if (!dev->interface) {
  rv = -ENODEV;
  goto exit;
 }


retry:
 spin_lock_irq(&dev->err_lock);
 ongoing_io = dev->ongoing_read;
 spin_unlock_irq(&dev->err_lock);

 if (ongoing_io) {

  if (file->f_flags & O_NONBLOCK) {
   rv = -EAGAIN;
   goto exit;
  }




  rv = wait_for_completion_interruptible(&dev->bulk_in_completion);
  if (rv < 0)
   goto exit;




  dev->bulk_in_copied = 0;
  dev->processed_urb = 1;
 }

 if (!dev->processed_urb) {




  wait_for_completion(&dev->bulk_in_completion);
  dev->bulk_in_copied = 0;
  dev->processed_urb = 1;
 }


 rv = dev->errors;
 if (rv < 0) {

  dev->errors = 0;

  rv = (rv == -EPIPE) ? rv : -EIO;

  dev->bulk_in_filled = 0;

  goto exit;
 }






 if (dev->bulk_in_filled) {

  size_t available = dev->bulk_in_filled - dev->bulk_in_copied;
  size_t chunk = min(available, count);

  if (!available) {




   rv = skel_do_read_io(dev, count);
   if (rv < 0)
    goto exit;
   else
    goto retry;
  }





  if (copy_to_user(buffer,
     dev->bulk_in_buffer + dev->bulk_in_copied,
     chunk))
   rv = -EFAULT;
  else
   rv = chunk;

  dev->bulk_in_copied += chunk;





  if (available < count)
   skel_do_read_io(dev, count - chunk);
 } else {

  rv = skel_do_read_io(dev, count);
  if (rv < 0)
   goto exit;
  else if (!file->f_flags & O_NONBLOCK)
   goto retry;
  rv = -EAGAIN;
 }
exit:
 mutex_unlock(&dev->io_mutex);
 return rv;
}
