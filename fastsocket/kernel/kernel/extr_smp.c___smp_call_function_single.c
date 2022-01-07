
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call_single_data {int info; int (* func ) (int ) ;} ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ cpu_online (int ) ;
 int csd_lock (struct call_single_data*) ;
 int generic_exec_single (int,struct call_single_data*,int) ;
 unsigned int get_cpu () ;
 scalar_t__ irqs_disabled () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int oops_in_progress ;
 int put_cpu () ;
 int smp_processor_id () ;
 int stub1 (int ) ;

void __smp_call_function_single(int cpu, struct call_single_data *data,
    int wait)
{
 unsigned int this_cpu;
 unsigned long flags;

 this_cpu = get_cpu();






 WARN_ON_ONCE(cpu_online(smp_processor_id()) && wait && irqs_disabled()
       && !oops_in_progress);

 if (cpu == this_cpu) {
  local_irq_save(flags);
  data->func(data->info);
  local_irq_restore(flags);
 } else {
  csd_lock(data);
  generic_exec_single(cpu, data, wait);
 }
 put_cpu();
}
