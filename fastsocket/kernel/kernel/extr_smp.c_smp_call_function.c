
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_online_mask ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function_many (int ,void (*) (void*),void*,int) ;

int smp_call_function(void (*func)(void *), void *info, int wait)
{
 preempt_disable();
 smp_call_function_many(cpu_online_mask, func, info, wait);
 preempt_enable();

 return 0;
}
