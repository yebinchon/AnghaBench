
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int mnt; int dentry; } ;
struct file {int dummy; } ;
typedef int dev_t ;


 scalar_t__ IS_ERR (struct file*) ;
 int O_RDONLY ;
 int PTR_ERR (struct file*) ;
 int autofs_dev_ioctl_fd_install (int,struct file*) ;
 int current_cred () ;
 struct file* dentry_open (int ,int ,int ,int ) ;
 int find_autofs_mount (char const*,struct path*,int ,int *) ;
 int get_unused_fd () ;
 scalar_t__ likely (int) ;
 int put_unused_fd (int) ;
 int test_by_dev ;

__attribute__((used)) static int autofs_dev_ioctl_open_mountpoint(const char *name, dev_t devid)
{
 int err, fd;

 fd = get_unused_fd();
 if (likely(fd >= 0)) {
  struct file *filp;
  struct path path;

  err = find_autofs_mount(name, &path, test_by_dev, &devid);
  if (err)
   goto out;






  filp = dentry_open(path.dentry, path.mnt, O_RDONLY,
       current_cred());
  if (IS_ERR(filp)) {
   err = PTR_ERR(filp);
   goto out;
  }

  autofs_dev_ioctl_fd_install(fd, filp);
 }

 return fd;

out:
 put_unused_fd(fd);
 return err;
}
