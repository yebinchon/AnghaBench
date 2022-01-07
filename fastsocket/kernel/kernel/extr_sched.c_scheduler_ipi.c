
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCHED_SOFTIRQ ;
 scalar_t__ got_nohz_idle_kick () ;
 int irq_enter () ;
 int irq_exit () ;
 int need_resched () ;
 int raise_softirq_irqoff (int ) ;
 scalar_t__ unlikely (int) ;

void scheduler_ipi(void)
{
 if (!got_nohz_idle_kick())
  return;
 irq_enter();



 if (unlikely(got_nohz_idle_kick() && !need_resched()))
  raise_softirq_irqoff(SCHED_SOFTIRQ);
 irq_exit();
}
