
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstatfs {int dummy; } ;
struct file {int f_path; } ;


 int EBADF ;
 struct file* fget (int) ;
 int fput (struct file*) ;
 int vfs_statfs (int *,struct kstatfs*) ;

int fd_statfs(int fd, struct kstatfs *st)
{
 struct file *file = fget(fd);
 int error = -EBADF;
 if (file) {
  error = vfs_statfs(&file->f_path, st);
  fput(file);
 }
 return error;
}
