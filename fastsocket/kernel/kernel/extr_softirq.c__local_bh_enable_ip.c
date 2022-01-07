
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SOFTIRQ_DISABLE_OFFSET ;
 int WARN_ON_ONCE (int) ;
 int dec_preempt_count () ;
 int do_softirq () ;
 int in_interrupt () ;
 scalar_t__ in_irq () ;
 scalar_t__ irqs_disabled () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 scalar_t__ local_softirq_pending () ;
 int preempt_check_resched () ;
 scalar_t__ softirq_count () ;
 int sub_preempt_count (scalar_t__) ;
 int trace_softirqs_on (unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void _local_bh_enable_ip(unsigned long ip)
{
 WARN_ON_ONCE(in_irq() || irqs_disabled());






 if (softirq_count() == SOFTIRQ_DISABLE_OFFSET)
  trace_softirqs_on(ip);




 sub_preempt_count(SOFTIRQ_DISABLE_OFFSET - 1);

 if (unlikely(!in_interrupt() && local_softirq_pending()))
  do_softirq();

 dec_preempt_count();



 preempt_check_resched();
}
