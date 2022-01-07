
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int SLEEP_TIME ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int buffer ;
 scalar_t__ consumer ;
 int init_completion (int *) ;
 scalar_t__ kill_test ;
 int kthread_should_stop () ;
 int read_start ;
 int ring_buffer_producer () ;
 int ring_buffer_reset (int ) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int smp_wmb () ;
 int trace_printk (char*) ;
 int wait_for_completion (int *) ;
 int wait_to_die () ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static int ring_buffer_producer_thread(void *arg)
{
 init_completion(&read_start);

 while (!kthread_should_stop() && !kill_test) {
  ring_buffer_reset(buffer);

  if (consumer) {
   smp_wmb();
   wake_up_process(consumer);
   wait_for_completion(&read_start);
  }

  ring_buffer_producer();

  trace_printk("Sleeping for 10 secs\n");
  set_current_state(TASK_INTERRUPTIBLE);
  schedule_timeout(HZ * SLEEP_TIME);
  __set_current_state(TASK_RUNNING);
 }

 if (kill_test)
  wait_to_die();

 return 0;
}
