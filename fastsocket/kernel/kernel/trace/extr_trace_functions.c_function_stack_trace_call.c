
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array_cpu {int disabled; } ;
struct trace_array {struct trace_array_cpu** data; } ;


 int __trace_stack (struct trace_array*,unsigned long,int,int) ;
 int atomic_dec (int *) ;
 long atomic_inc_return (int *) ;
 int ftrace_function_enabled ;
 struct trace_array* func_trace ;
 scalar_t__ likely (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_count () ;
 int raw_smp_processor_id () ;
 int trace_function (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
function_stack_trace_call(unsigned long ip, unsigned long parent_ip)
{
 struct trace_array *tr = func_trace;
 struct trace_array_cpu *data;
 unsigned long flags;
 long disabled;
 int cpu;
 int pc;

 if (unlikely(!ftrace_function_enabled))
  return;





 local_irq_save(flags);
 cpu = raw_smp_processor_id();
 data = tr->data[cpu];
 disabled = atomic_inc_return(&data->disabled);

 if (likely(disabled == 1)) {
  pc = preempt_count();
  trace_function(tr, ip, parent_ip, flags, pc);
  __trace_stack(tr, flags, 5, pc);
 }

 atomic_dec(&data->disabled);
 local_irq_restore(flags);
}
