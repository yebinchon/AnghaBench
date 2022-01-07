
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __irq_enter () ;
 int _local_bh_enable () ;
 scalar_t__ idle_cpu (int) ;
 int in_interrupt () ;
 int local_bh_disable () ;
 int rcu_irq_enter () ;
 int smp_processor_id () ;
 int tick_check_idle (int) ;

void irq_enter(void)
{
 int cpu = smp_processor_id();

 rcu_irq_enter();
 if (idle_cpu(cpu) && !in_interrupt()) {




  local_bh_disable();
  tick_check_idle(cpu);
  _local_bh_enable();
 }

 __irq_enter();
}
