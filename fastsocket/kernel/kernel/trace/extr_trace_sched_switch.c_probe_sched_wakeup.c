
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trace_array_cpu {int disabled; } ;
struct task_struct {int dummy; } ;
struct rq {int dummy; } ;
struct TYPE_3__ {struct trace_array_cpu** data; } ;


 int atomic_read (int *) ;
 TYPE_1__* ctx_trace ;
 int current ;
 scalar_t__ likely (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_count () ;
 int raw_smp_processor_id () ;
 int sched_ref ;
 scalar_t__ sched_stopped ;
 int tracer_enabled ;
 int tracing_record_cmdline (int ) ;
 int tracing_sched_wakeup_trace (TYPE_1__*,struct task_struct*,int ,unsigned long,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
probe_sched_wakeup(struct rq *__rq, struct task_struct *wakee, int success)
{
 struct trace_array_cpu *data;
 unsigned long flags;
 int cpu, pc;

 if (unlikely(!sched_ref))
  return;

 tracing_record_cmdline(current);

 if (!tracer_enabled || sched_stopped)
  return;

 pc = preempt_count();
 local_irq_save(flags);
 cpu = raw_smp_processor_id();
 data = ctx_trace->data[cpu];

 if (likely(!atomic_read(&data->disabled)))
  tracing_sched_wakeup_trace(ctx_trace, wakee, current,
        flags, pc);

 local_irq_restore(flags);
}
