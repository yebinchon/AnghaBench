
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int private_data; } ;
struct eventfd_ctx {int dummy; } ;


 scalar_t__ IS_ERR (struct file*) ;
 struct eventfd_ctx* eventfd_ctx_get (int ) ;
 struct file* eventfd_fget (int) ;
 int fput (struct file*) ;

struct eventfd_ctx *eventfd_ctx_fdget(int fd)
{
 struct file *file;
 struct eventfd_ctx *ctx;

 file = eventfd_fget(fd);
 if (IS_ERR(file))
  return (struct eventfd_ctx *) file;
 ctx = eventfd_ctx_get(file->private_data);
 fput(file);

 return ctx;
}
