
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array_cpu {int disabled; } ;
struct trace_array {struct trace_array_cpu** data; } ;


 int atomic_dec (int *) ;
 long atomic_inc_return (int *) ;
 int ftrace_function_enabled ;
 int ftrace_preempt_disable () ;
 int ftrace_preempt_enable (int) ;
 struct trace_array* func_trace ;
 scalar_t__ likely (int) ;
 int local_save_flags (unsigned long) ;
 int preempt_count () ;
 int raw_smp_processor_id () ;
 int trace_function (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
function_trace_call_preempt_only(unsigned long ip, unsigned long parent_ip)
{
 struct trace_array *tr = func_trace;
 struct trace_array_cpu *data;
 unsigned long flags;
 long disabled;
 int cpu, resched;
 int pc;

 if (unlikely(!ftrace_function_enabled))
  return;

 pc = preempt_count();
 resched = ftrace_preempt_disable();
 local_save_flags(flags);
 cpu = raw_smp_processor_id();
 data = tr->data[cpu];
 disabled = atomic_inc_return(&data->disabled);

 if (likely(disabled == 1))
  trace_function(tr, ip, parent_ip, flags, pc);

 atomic_dec(&data->disabled);
 ftrace_preempt_enable(resched);
}
