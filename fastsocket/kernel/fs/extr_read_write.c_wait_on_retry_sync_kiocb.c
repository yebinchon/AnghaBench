
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;


 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int kiocbClearKicked (struct kiocb*) ;
 int kiocbIsKicked (struct kiocb*) ;
 int schedule () ;
 int set_current_state (int ) ;

__attribute__((used)) static void wait_on_retry_sync_kiocb(struct kiocb *iocb)
{
 set_current_state(TASK_UNINTERRUPTIBLE);
 if (!kiocbIsKicked(iocb))
  schedule();
 else
  kiocbClearKicked(iocb);
 __set_current_state(TASK_RUNNING);
}
