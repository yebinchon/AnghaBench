
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;
typedef int SYSCALL_DEFINE ;


 int EBADF ;
 int do_fallocate (struct file*,int,int ,int ) ;
 struct file* fget (int) ;
 int fput (struct file*) ;

SYSCALL_DEFINE(fallocate)(int fd, int mode, loff_t offset, loff_t len)
{
 struct file *file;
 int error = -EBADF;

 file = fget(fd);
 if (file) {
  error = do_fallocate(file, mode, offset, len);
  fput(file);
 }

 return error;
}
