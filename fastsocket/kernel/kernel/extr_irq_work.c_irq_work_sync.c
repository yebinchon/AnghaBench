
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {int dummy; } ;


 int IRQ_WORK_BUSY ;
 int WARN_ON_ONCE (int ) ;
 int cpu_relax () ;
 scalar_t__ irq_work_is_set (struct irq_work*,int ) ;
 int irqs_disabled () ;

void irq_work_sync(struct irq_work *entry)
{
 WARN_ON_ONCE(irqs_disabled());

 while (irq_work_is_set(entry, IRQ_WORK_BUSY))
  cpu_relax();
}
