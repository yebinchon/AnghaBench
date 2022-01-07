
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_next; } ;
struct file {int dummy; } ;


 int ENOENT ;
 int __locks_delete_block (struct file_lock*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

int
posix_unblock_lock(struct file *filp, struct file_lock *waiter)
{
 int status = 0;

 lock_kernel();
 if (waiter->fl_next)
  __locks_delete_block(waiter);
 else
  status = -ENOENT;
 unlock_kernel();
 return status;
}
