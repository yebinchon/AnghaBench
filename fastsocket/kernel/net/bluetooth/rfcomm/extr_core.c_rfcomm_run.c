
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BDADDR_ANY ;
 int BT_DBG (char*) ;
 int RFCOMM_SCHED_WAKEUP ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int clear_bit (int ,int *) ;
 int current ;
 int kthread_should_stop () ;
 int rfcomm_add_listener (int ) ;
 int rfcomm_event ;
 int rfcomm_kill_listener () ;
 int rfcomm_process_sessions () ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_user_nice (int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int rfcomm_run(void *unused)
{
 BT_DBG("");

 set_user_nice(current, -10);

 rfcomm_add_listener(BDADDR_ANY);

 while (!kthread_should_stop()) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (!test_bit(RFCOMM_SCHED_WAKEUP, &rfcomm_event)) {


   schedule();
  }
  set_current_state(TASK_RUNNING);


  clear_bit(RFCOMM_SCHED_WAKEUP, &rfcomm_event);
  rfcomm_process_sessions();
 }

 rfcomm_kill_listener();

 return 0;
}
