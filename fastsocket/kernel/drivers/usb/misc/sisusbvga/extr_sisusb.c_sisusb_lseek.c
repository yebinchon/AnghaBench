
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int lock; int sisusb_dev; int ready; int present; } ;
struct file {int f_pos; scalar_t__ private_data; } ;
typedef int loff_t ;


 int EINVAL ;
 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static loff_t
sisusb_lseek(struct file *file, loff_t offset, int orig)
{
 struct sisusb_usb_data *sisusb;
 loff_t ret;

 if (!(sisusb = (struct sisusb_usb_data *)file->private_data))
  return -ENODEV;

 mutex_lock(&sisusb->lock);


 if (!sisusb->present || !sisusb->ready || !sisusb->sisusb_dev) {
  mutex_unlock(&sisusb->lock);
  return -ENODEV;
 }

 switch (orig) {
  case 0:
   file->f_pos = offset;
   ret = file->f_pos;

   break;
  case 1:
   file->f_pos += offset;
   ret = file->f_pos;

   break;
  default:

   ret = -EINVAL;
 }

 mutex_unlock(&sisusb->lock);
 return ret;
}
