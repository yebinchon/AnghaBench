
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 struct file* anon_inode_getfile (char const*,struct file_operations const*,void*,int) ;
 int fd_install (int,struct file*) ;
 int get_unused_fd_flags (int) ;
 int put_unused_fd (int) ;

int anon_inode_getfd(const char *name, const struct file_operations *fops,
       void *priv, int flags)
{
 int error, fd;
 struct file *file;

 error = get_unused_fd_flags(flags);
 if (error < 0)
  return error;
 fd = error;

 file = anon_inode_getfile(name, fops, priv, flags);
 if (IS_ERR(file)) {
  error = PTR_ERR(file);
  goto err_put_unused_fd;
 }
 fd_install(fd, file);

 return fd;

err_put_unused_fd:
 put_unused_fd(fd);
 return error;
}
