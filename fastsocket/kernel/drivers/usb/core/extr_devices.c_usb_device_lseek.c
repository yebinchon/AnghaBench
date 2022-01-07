
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
typedef int loff_t ;


 int EINVAL ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static loff_t usb_device_lseek(struct file *file, loff_t offset, int orig)
{
 loff_t ret;

 lock_kernel();

 switch (orig) {
 case 0:
  file->f_pos = offset;
  ret = file->f_pos;
  break;
 case 1:
  file->f_pos += offset;
  ret = file->f_pos;
  break;
 case 2:
 default:
  ret = -EINVAL;
 }

 unlock_kernel();
 return ret;
}
