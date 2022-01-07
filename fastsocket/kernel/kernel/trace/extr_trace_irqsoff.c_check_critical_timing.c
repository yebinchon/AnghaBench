
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array_cpu {scalar_t__ critical_sequence; unsigned long critical_end; void* preempt_timestamp; } ;
struct trace_array {int dummy; } ;
typedef void* cycle_t ;


 int CALLER_ADDR0 ;
 int current ;
 void* ftrace_now (int) ;
 int is_tracing_stopped () ;
 scalar_t__ likely (int) ;
 int local_save_flags (unsigned long) ;
 scalar_t__ max_sequence ;
 int max_trace_lock ;
 int preempt_count () ;
 int report_latency (void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_function (struct trace_array*,int ,unsigned long,unsigned long,int) ;
 void* tracing_max_latency ;
 int update_max_tr_single (struct trace_array*,int ,int) ;

__attribute__((used)) static void
check_critical_timing(struct trace_array *tr,
        struct trace_array_cpu *data,
        unsigned long parent_ip,
        int cpu)
{
 cycle_t T0, T1, delta;
 unsigned long flags;
 int pc;

 T0 = data->preempt_timestamp;
 T1 = ftrace_now(cpu);
 delta = T1-T0;

 local_save_flags(flags);

 pc = preempt_count();

 if (!report_latency(delta))
  goto out;

 spin_lock_irqsave(&max_trace_lock, flags);


 if (!report_latency(delta))
  goto out_unlock;

 trace_function(tr, CALLER_ADDR0, parent_ip, flags, pc);

 if (data->critical_sequence != max_sequence)
  goto out_unlock;

 data->critical_end = parent_ip;

 if (likely(!is_tracing_stopped())) {
  tracing_max_latency = delta;
  update_max_tr_single(tr, current, cpu);
 }

 max_sequence++;

out_unlock:
 spin_unlock_irqrestore(&max_trace_lock, flags);

out:
 data->critical_sequence = max_sequence;
 data->preempt_timestamp = ftrace_now(cpu);
 trace_function(tr, CALLER_ADDR0, parent_ip, flags, pc);
}
