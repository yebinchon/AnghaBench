
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;


 int EBADF ;
 struct file* fget (unsigned int) ;
 int fput (struct file*) ;
 int vfs_fsync (struct file*,int ,int) ;

__attribute__((used)) static int do_fsync(unsigned int fd, int datasync)
{
 struct file *file;
 int ret = -EBADF;

 file = fget(fd);
 if (file) {
  ret = vfs_fsync(file, file->f_path.dentry, datasync);
  fput(file);
 }
 return ret;
}
