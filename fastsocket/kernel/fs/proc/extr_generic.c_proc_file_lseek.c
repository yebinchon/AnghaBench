
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
typedef int loff_t ;


 int EINVAL ;
 int MAX_NON_LFS ;

__attribute__((used)) static loff_t
proc_file_lseek(struct file *file, loff_t offset, int orig)
{
 loff_t retval = -EINVAL;
 switch (orig) {
 case 1:
  offset += file->f_pos;

 case 0:
  if (offset < 0 || offset > MAX_NON_LFS)
   break;
  file->f_pos = retval = offset;
 }
 return retval;
}
