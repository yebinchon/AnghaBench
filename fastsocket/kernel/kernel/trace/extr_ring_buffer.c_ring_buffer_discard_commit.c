
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int committing; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; } ;


 int RB_WARN_ON (struct ring_buffer*,int) ;
 int ftrace_preempt_enable (int ) ;
 int local_read (int *) ;
 int per_cpu (int ,int) ;
 int preempt_count () ;
 int preempt_enable_no_resched_notrace () ;
 int rb_decrement_entry (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ;
 int rb_end_commit (struct ring_buffer_per_cpu*) ;
 int rb_event_discard (struct ring_buffer_event*) ;
 int rb_need_resched ;
 scalar_t__ rb_try_to_discard (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ;
 int rb_update_write_stamp (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ;
 int smp_processor_id () ;
 int trace_recursive_unlock () ;

void ring_buffer_discard_commit(struct ring_buffer *buffer,
    struct ring_buffer_event *event)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 int cpu;


 rb_event_discard(event);

 cpu = smp_processor_id();
 cpu_buffer = buffer->buffers[cpu];






 RB_WARN_ON(buffer, !local_read(&cpu_buffer->committing));

 rb_decrement_entry(cpu_buffer, event);
 if (rb_try_to_discard(cpu_buffer, event))
  goto out;





 rb_update_write_stamp(cpu_buffer, event);
 out:
 rb_end_commit(cpu_buffer);

 trace_recursive_unlock();




 if (preempt_count() == 1)
  ftrace_preempt_enable(per_cpu(rb_need_resched, cpu));
 else
  preempt_enable_no_resched_notrace();

}
