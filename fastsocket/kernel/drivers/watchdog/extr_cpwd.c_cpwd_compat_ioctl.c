
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int ENOIOCTLCMD ;



 int cpwd_ioctl (struct file*,unsigned int,unsigned long) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static long cpwd_compat_ioctl(struct file *file, unsigned int cmd,
         unsigned long arg)
{
 int rval = -ENOIOCTLCMD;

 switch (cmd) {

 case 129:
 case 128:
 case 130:
  lock_kernel();
  rval = cpwd_ioctl(file, cmd, arg);
  unlock_kernel();
  break;


 default:
  break;
 }

 return rval;
}
