
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int private_data; int * f_op; } ;
struct eventfd_ctx {int dummy; } ;


 int EINVAL ;
 struct eventfd_ctx* ERR_PTR (int ) ;
 struct eventfd_ctx* eventfd_ctx_get (int ) ;
 int eventfd_fops ;

struct eventfd_ctx *eventfd_ctx_fileget(struct file *file)
{
 if (file->f_op != &eventfd_fops)
  return ERR_PTR(-EINVAL);

 return eventfd_ctx_get(file->private_data);
}
