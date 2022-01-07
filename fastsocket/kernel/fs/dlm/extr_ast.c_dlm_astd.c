
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int WAKE_ASTS ;
 int astd_running ;
 int astd_wakeflags ;
 int kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int process_asts () ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int dlm_astd(void *data)
{
 while (!kthread_should_stop()) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (!test_bit(WAKE_ASTS, &astd_wakeflags))
   schedule();
  set_current_state(TASK_RUNNING);

  mutex_lock(&astd_running);
  if (test_and_clear_bit(WAKE_ASTS, &astd_wakeflags))
   process_asts();
  mutex_unlock(&astd_running);
 }
 return 0;
}
