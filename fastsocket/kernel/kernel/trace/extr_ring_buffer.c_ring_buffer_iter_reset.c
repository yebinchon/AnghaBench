
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int reader_lock; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;


 int rb_iter_reset (struct ring_buffer_iter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ring_buffer_iter_reset(struct ring_buffer_iter *iter)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 unsigned long flags;

 if (!iter)
  return;

 cpu_buffer = iter->cpu_buffer;

 spin_lock_irqsave(&cpu_buffer->reader_lock, flags);
 rb_iter_reset(iter);
 spin_unlock_irqrestore(&cpu_buffer->reader_lock, flags);
}
