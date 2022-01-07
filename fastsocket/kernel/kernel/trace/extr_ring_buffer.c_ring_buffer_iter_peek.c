
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ring_buffer_per_cpu {int reader_lock; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer_event {scalar_t__ type_len; } ;


 scalar_t__ RINGBUF_TYPE_PADDING ;
 struct ring_buffer_event* rb_iter_peek (struct ring_buffer_iter*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ring_buffer_event *
ring_buffer_iter_peek(struct ring_buffer_iter *iter, u64 *ts)
{
 struct ring_buffer_per_cpu *cpu_buffer = iter->cpu_buffer;
 struct ring_buffer_event *event;
 unsigned long flags;

 again:
 spin_lock_irqsave(&cpu_buffer->reader_lock, flags);
 event = rb_iter_peek(iter, ts);
 spin_unlock_irqrestore(&cpu_buffer->reader_lock, flags);

 if (event && event->type_len == RINGBUF_TYPE_PADDING)
  goto again;

 return event;
}
