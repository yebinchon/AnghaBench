
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int func ;


 int WARN_ON (int) ;
 int local_irq_disable () ;
 int local_irq_enable () ;

int smp_call_function_single(int cpu, void (*func) (void *info), void *info,
    int wait)
{
 WARN_ON(cpu != 0);

 local_irq_disable();
 (func)(info);
 local_irq_enable();

 return 0;
}
