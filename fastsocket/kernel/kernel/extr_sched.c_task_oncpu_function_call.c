
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function_single (int,void (*) (void*),void*,int) ;
 int task_cpu (struct task_struct*) ;
 scalar_t__ task_curr (struct task_struct*) ;

void task_oncpu_function_call(struct task_struct *p,
         void (*func) (void *info), void *info)
{
 int cpu;

 preempt_disable();
 cpu = task_cpu(p);
 if (task_curr(p))
  smp_call_function_single(cpu, func, info, 1);
 preempt_enable();
}
