
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_user_data; scalar_t__ ki_users; } ;
typedef int ssize_t ;


 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int io_schedule () ;
 int set_current_state (int ) ;

ssize_t wait_on_sync_kiocb(struct kiocb *iocb)
{
 while (iocb->ki_users) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  if (!iocb->ki_users)
   break;
  io_schedule();
 }
 __set_current_state(TASK_RUNNING);
 return iocb->ki_user_data;
}
