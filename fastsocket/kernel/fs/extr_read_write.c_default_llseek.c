
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {scalar_t__ f_version; scalar_t__ f_pos; TYPE_2__ f_path; } ;
typedef scalar_t__ loff_t ;
struct TYPE_3__ {int d_inode; } ;


 scalar_t__ EINVAL ;


 scalar_t__ i_size_read (int ) ;
 int lock_kernel () ;
 int unlock_kernel () ;

loff_t default_llseek(struct file *file, loff_t offset, int origin)
{
 loff_t retval;

 lock_kernel();
 switch (origin) {
  case 128:
   offset += i_size_read(file->f_path.dentry->d_inode);
   break;
  case 129:
   if (offset == 0) {
    retval = file->f_pos;
    goto out;
   }
   offset += file->f_pos;
 }
 retval = -EINVAL;
 if (offset >= 0) {
  if (offset != file->f_pos) {
   file->f_pos = offset;
   file->f_version = 0;
  }
  retval = offset;
 }
out:
 unlock_kernel();
 return retval;
}
