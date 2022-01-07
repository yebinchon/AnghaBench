
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 scalar_t__ compat_ptr (unsigned long) ;
 int sys_ioctl (unsigned int,unsigned int,unsigned long) ;

__attribute__((used)) static int do_ioctl32_pointer(unsigned int fd, unsigned int cmd,
         unsigned long arg, struct file *f)
{
 return sys_ioctl(fd, cmd, (unsigned long)compat_ptr(arg));
}
