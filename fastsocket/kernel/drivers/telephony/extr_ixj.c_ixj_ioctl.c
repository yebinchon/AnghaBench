
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long do_ixj_ioctl (struct file*,unsigned int,unsigned long) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static long ixj_ioctl(struct file *file_p, unsigned int cmd, unsigned long arg)
{
 long ret;
 lock_kernel();
 ret = do_ixj_ioctl(file_p, cmd, arg);
 unlock_kernel();
 return ret;
}
