
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
typedef int loff_t ;


 int EINVAL ;
 int force_successful_syscall_return () ;

loff_t mem_lseek(struct file *file, loff_t offset, int orig)
{
 switch (orig) {
 case 0:
  file->f_pos = offset;
  break;
 case 1:
  file->f_pos += offset;
  break;
 default:
  return -EINVAL;
 }
 force_successful_syscall_return();
 return file->f_pos;
}
