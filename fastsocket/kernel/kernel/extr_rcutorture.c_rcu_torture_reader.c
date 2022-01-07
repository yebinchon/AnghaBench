
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct rcu_torture {scalar_t__ rtort_mbtest; int rtort_pipe_count; } ;
struct TYPE_2__ {int (* readlock ) () ;int (* completed ) () ;scalar_t__ irq_capable; int (* readunlock ) (int) ;int (* read_delay ) (int *) ;} ;


 int DEFINE_RCU_RANDOM (int ) ;
 scalar_t__ FULLSTOP_DONTSTOP ;
 int HZ ;
 int RCU_TORTURE_PIPE_LEN ;
 int VERBOSE_PRINTK_STRING (char*) ;
 int * __get_cpu_var (int ) ;
 int atomic_inc (int *) ;
 TYPE_1__* cur_ops ;
 int current ;
 int del_timer_sync (struct timer_list*) ;
 scalar_t__ fullstop ;
 scalar_t__ irqreader ;
 int kthread_should_stop () ;
 int mod_timer (struct timer_list*,int) ;
 int n_rcu_torture_mberror ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rand ;
 struct rcu_torture* rcu_dereference (int ) ;
 int rcu_stutter_wait (char*) ;
 int rcu_torture_batch ;
 int rcu_torture_count ;
 int rcu_torture_current ;
 int rcu_torture_timer ;
 int rcutorture_shutdown_absorb (char*) ;
 int schedule () ;
 int schedule_timeout_interruptible (int ) ;
 int schedule_timeout_uninterruptible (int) ;
 int set_user_nice (int ,int) ;
 int setup_timer_on_stack (struct timer_list*,int ,int ) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 (int) ;
 int stub4 (int *) ;
 int stub5 () ;
 int stub6 (int) ;
 int timer_pending (struct timer_list*) ;

__attribute__((used)) static int
rcu_torture_reader(void *arg)
{
 int completed;
 int idx;
 DEFINE_RCU_RANDOM(rand);
 struct rcu_torture *p;
 int pipe_count;
 struct timer_list t;

 VERBOSE_PRINTK_STRING("rcu_torture_reader task started");
 set_user_nice(current, 19);
 if (irqreader && cur_ops->irq_capable)
  setup_timer_on_stack(&t, rcu_torture_timer, 0);

 do {
  if (irqreader && cur_ops->irq_capable) {
   if (!timer_pending(&t))
    mod_timer(&t, 1);
  }
  idx = cur_ops->readlock();
  completed = cur_ops->completed();
  p = rcu_dereference(rcu_torture_current);
  if (p == ((void*)0)) {

   cur_ops->readunlock(idx);
   schedule_timeout_interruptible(HZ);
   continue;
  }
  if (p->rtort_mbtest == 0)
   atomic_inc(&n_rcu_torture_mberror);
  cur_ops->read_delay(&rand);
  preempt_disable();
  pipe_count = p->rtort_pipe_count;
  if (pipe_count > RCU_TORTURE_PIPE_LEN) {

   pipe_count = RCU_TORTURE_PIPE_LEN;
  }
  ++__get_cpu_var(rcu_torture_count)[pipe_count];
  completed = cur_ops->completed() - completed;
  if (completed > RCU_TORTURE_PIPE_LEN) {

   completed = RCU_TORTURE_PIPE_LEN;
  }
  ++__get_cpu_var(rcu_torture_batch)[completed];
  preempt_enable();
  cur_ops->readunlock(idx);
  schedule();
  rcu_stutter_wait("rcu_torture_reader");
 } while (!kthread_should_stop() && fullstop == FULLSTOP_DONTSTOP);
 VERBOSE_PRINTK_STRING("rcu_torture_reader task stopping");
 rcutorture_shutdown_absorb("rcu_torture_reader");
 if (irqreader && cur_ops->irq_capable)
  del_timer_sync(&t);
 while (!kthread_should_stop())
  schedule_timeout_uninterruptible(1);
 return 0;
}
