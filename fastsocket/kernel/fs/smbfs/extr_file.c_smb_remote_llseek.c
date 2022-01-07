
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int generic_file_llseek_unlocked (struct file*,int ,int) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static loff_t smb_remote_llseek(struct file *file, loff_t offset, int origin)
{
 loff_t ret;
 lock_kernel();
 ret = generic_file_llseek_unlocked(file, offset, origin);
 unlock_kernel();
 return ret;
}
