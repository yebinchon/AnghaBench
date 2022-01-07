
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; } ;


 int ftrace_preempt_enable (int ) ;
 int per_cpu (int ,int) ;
 int preempt_count () ;
 int preempt_enable_no_resched_notrace () ;
 int raw_smp_processor_id () ;
 int rb_commit (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ;
 int rb_need_resched ;
 int trace_recursive_unlock () ;

int ring_buffer_unlock_commit(struct ring_buffer *buffer,
         struct ring_buffer_event *event)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 int cpu = raw_smp_processor_id();

 cpu_buffer = buffer->buffers[cpu];

 rb_commit(cpu_buffer, event);

 trace_recursive_unlock();




 if (preempt_count() == 1)
  ftrace_preempt_enable(per_cpu(rb_need_resched, cpu));
 else
  preempt_enable_no_resched_notrace();

 return 0;
}
