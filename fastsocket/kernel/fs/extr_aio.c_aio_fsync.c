
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct file {TYPE_1__* f_op; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* aio_fsync ) (struct kiocb*,int ) ;} ;


 int EINVAL ;
 int stub1 (struct kiocb*,int ) ;

__attribute__((used)) static ssize_t aio_fsync(struct kiocb *iocb)
{
 struct file *file = iocb->ki_filp;
 ssize_t ret = -EINVAL;

 if (file->f_op->aio_fsync)
  ret = file->f_op->aio_fsync(iocb, 0);
 return ret;
}
