
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array_cpu {int disabled; } ;
struct trace_array {struct trace_array_cpu** data; } ;


 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int ftrace_trace_special (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ;
 struct trace_array global_trace ;
 scalar_t__ likely (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_count () ;
 int raw_smp_processor_id () ;
 scalar_t__ tracing_disabled ;

void
ftrace_special(unsigned long arg1, unsigned long arg2, unsigned long arg3)
{
 struct trace_array *tr = &global_trace;
 struct trace_array_cpu *data;
 unsigned long flags;
 int cpu;
 int pc;

 if (tracing_disabled)
  return;

 pc = preempt_count();
 local_irq_save(flags);
 cpu = raw_smp_processor_id();
 data = tr->data[cpu];

 if (likely(atomic_inc_return(&data->disabled) == 1))
  ftrace_trace_special(tr, arg1, arg2, arg3, pc);

 atomic_dec(&data->disabled);
 local_irq_restore(flags);
}
