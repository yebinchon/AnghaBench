
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int fasync; } ;
struct file {int dummy; } ;


 int EPERM ;
 int fasync_helper (int,struct file*,int,int *) ;
 struct fuse_conn* fuse_get_conn (struct file*) ;

__attribute__((used)) static int fuse_dev_fasync(int fd, struct file *file, int on)
{
 struct fuse_conn *fc = fuse_get_conn(file);
 if (!fc)
  return -EPERM;


 return fasync_helper(fd, file, on, &fc->fasync);
}
