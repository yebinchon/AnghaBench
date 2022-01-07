
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int complete (int *) ;
 scalar_t__ kill_test ;
 scalar_t__ kthread_should_stop () ;
 int read_start ;
 int ring_buffer_consumer () ;
 int schedule () ;
 int set_current_state (int ) ;
 int wait_to_die () ;

__attribute__((used)) static int ring_buffer_consumer_thread(void *arg)
{
 while (!kthread_should_stop() && !kill_test) {
  complete(&read_start);

  ring_buffer_consumer();

  set_current_state(TASK_INTERRUPTIBLE);
  if (kthread_should_stop() || kill_test)
   break;

  schedule();
  __set_current_state(TASK_RUNNING);
 }
 __set_current_state(TASK_RUNNING);

 if (kill_test)
  wait_to_die();

 return 0;
}
