
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kstat {int dummy; } ;
struct TYPE_2__ {int dentry; int mnt; } ;
struct file {TYPE_1__ f_path; } ;


 int EBADF ;
 struct file* fget (unsigned int) ;
 int fput (struct file*) ;
 int vfs_getattr (int ,int ,struct kstat*) ;

int vfs_fstat(unsigned int fd, struct kstat *stat)
{
 struct file *f = fget(fd);
 int error = -EBADF;

 if (f) {
  error = vfs_getattr(f->f_path.mnt, f->f_path.dentry, stat);
  fput(f);
 }
 return error;
}
