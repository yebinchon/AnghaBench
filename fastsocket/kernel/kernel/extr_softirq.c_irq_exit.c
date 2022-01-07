
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_EXIT_OFFSET ;
 int account_system_vtime (int ) ;
 int current ;
 scalar_t__ idle_cpu (int ) ;
 int in_interrupt () ;
 int invoke_softirq () ;
 scalar_t__ local_softirq_pending () ;
 int need_resched () ;
 int preempt_enable_no_resched () ;
 int rcu_irq_exit () ;
 int smp_processor_id () ;
 int sub_preempt_count (int ) ;
 int tick_nohz_stop_sched_tick (int ) ;
 int trace_hardirq_exit () ;

void irq_exit(void)
{
 account_system_vtime(current);
 trace_hardirq_exit();
 sub_preempt_count(IRQ_EXIT_OFFSET);
 if (!in_interrupt() && local_softirq_pending())
  invoke_softirq();







 preempt_enable_no_resched();
}
