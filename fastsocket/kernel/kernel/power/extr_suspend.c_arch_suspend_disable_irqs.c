
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;

void __attribute__ ((weak)) arch_suspend_disable_irqs(void)
{
 local_irq_disable();
}
