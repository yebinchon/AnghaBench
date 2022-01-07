
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_op; } ;


 int EBADF ;
 int EINVAL ;
 struct file* ERR_PTR (int ) ;
 struct file* fget (int) ;
 int fput (struct file*) ;
 int ns_file_operations ;

struct file *proc_ns_fget(int fd)
{
 struct file *file;

 file = fget(fd);
 if (!file)
  return ERR_PTR(-EBADF);

 if (file->f_op != &ns_file_operations)
  goto out_invalid;

 return file;

out_invalid:
 fput(file);
 return ERR_PTR(-EINVAL);
}
