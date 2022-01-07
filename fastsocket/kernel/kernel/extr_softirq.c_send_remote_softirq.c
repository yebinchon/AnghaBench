
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call_single_data {int dummy; } ;


 int __send_remote_softirq (struct call_single_data*,int,int,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int smp_processor_id () ;

void send_remote_softirq(struct call_single_data *cp, int cpu, int softirq)
{
 unsigned long flags;
 int this_cpu;

 local_irq_save(flags);
 this_cpu = smp_processor_id();
 __send_remote_softirq(cp, cpu, this_cpu, softirq);
 local_irq_restore(flags);
}
