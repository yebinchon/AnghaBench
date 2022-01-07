
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* setlease ) (struct file*,long,struct file_lock**) ;} ;


 int generic_setlease (struct file*,long,struct file_lock**) ;
 int lock_kernel () ;
 int stub1 (struct file*,long,struct file_lock**) ;
 int unlock_kernel () ;

int vfs_setlease(struct file *filp, long arg, struct file_lock **lease)
{
 int error;

 lock_kernel();
 if (filp->f_op && filp->f_op->setlease)
  error = filp->f_op->setlease(filp, arg, lease);
 else
  error = generic_setlease(filp, arg, lease);
 unlock_kernel();

 return error;
}
