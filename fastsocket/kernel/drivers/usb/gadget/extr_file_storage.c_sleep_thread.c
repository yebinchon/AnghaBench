
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_dev {scalar_t__ thread_wakeup_needed; } ;


 int EINTR ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int current ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int try_to_freeze () ;

__attribute__((used)) static int sleep_thread(struct fsg_dev *fsg)
{
 int rc = 0;


 for (;;) {
  try_to_freeze();
  set_current_state(TASK_INTERRUPTIBLE);
  if (signal_pending(current)) {
   rc = -EINTR;
   break;
  }
  if (fsg->thread_wakeup_needed)
   break;
  schedule();
 }
 __set_current_state(TASK_RUNNING);
 fsg->thread_wakeup_needed = 0;
 return rc;
}
