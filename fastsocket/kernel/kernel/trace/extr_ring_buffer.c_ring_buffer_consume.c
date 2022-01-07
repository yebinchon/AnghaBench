
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ring_buffer_per_cpu {int reader_lock; } ;
struct ring_buffer_event {scalar_t__ type_len; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int cpumask; } ;


 scalar_t__ RINGBUF_TYPE_PADDING ;
 int cpumask_test_cpu (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rb_advance_reader (struct ring_buffer_per_cpu*) ;
 struct ring_buffer_event* rb_buffer_peek (struct ring_buffer_per_cpu*,int *) ;
 int rb_ok_to_lock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct ring_buffer_event *
ring_buffer_consume(struct ring_buffer *buffer, int cpu, u64 *ts)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 struct ring_buffer_event *event = ((void*)0);
 unsigned long flags;
 int dolock;

 dolock = rb_ok_to_lock();

 again:

 preempt_disable();

 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  goto out;

 cpu_buffer = buffer->buffers[cpu];
 local_irq_save(flags);
 if (dolock)
  spin_lock(&cpu_buffer->reader_lock);

 event = rb_buffer_peek(cpu_buffer, ts);
 if (event)
  rb_advance_reader(cpu_buffer);

 if (dolock)
  spin_unlock(&cpu_buffer->reader_lock);
 local_irq_restore(flags);

 out:
 preempt_enable();

 if (event && event->type_len == RINGBUF_TYPE_PADDING)
  goto again;

 return event;
}
