
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int CPU_PROFILING ;
 scalar_t__ cpumask_test_cpu (int ,int *) ;
 struct pt_regs* get_irq_regs () ;
 int * prof_cpu_mask ;
 int profile_hit (int,void*) ;
 scalar_t__ profile_pc (struct pt_regs*) ;
 int smp_processor_id () ;
 int timer_hook (struct pt_regs*) ;
 int user_mode (struct pt_regs*) ;

void profile_tick(int type)
{
 struct pt_regs *regs = get_irq_regs();

 if (type == CPU_PROFILING && timer_hook)
  timer_hook(regs);
 if (!user_mode(regs) && prof_cpu_mask != ((void*)0) &&
     cpumask_test_cpu(smp_processor_id(), prof_cpu_mask))
  profile_hit(type, (void *)profile_pc(regs));
}
