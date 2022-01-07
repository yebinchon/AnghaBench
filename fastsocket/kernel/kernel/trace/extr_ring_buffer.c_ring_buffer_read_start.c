
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int reader_lock; int lock; int record_disabled; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int cpumask; } ;


 int GFP_KERNEL ;
 int __raw_spin_lock (int *) ;
 int __raw_spin_unlock (int *) ;
 int atomic_inc (int *) ;
 int cpumask_test_cpu (int,int ) ;
 struct ring_buffer_iter* kmalloc (int,int ) ;
 int rb_iter_reset (struct ring_buffer_iter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_sched () ;

struct ring_buffer_iter *
ring_buffer_read_start(struct ring_buffer *buffer, int cpu)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 struct ring_buffer_iter *iter;
 unsigned long flags;

 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  return ((void*)0);

 iter = kmalloc(sizeof(*iter), GFP_KERNEL);
 if (!iter)
  return ((void*)0);

 cpu_buffer = buffer->buffers[cpu];

 iter->cpu_buffer = cpu_buffer;

 atomic_inc(&cpu_buffer->record_disabled);
 synchronize_sched();

 spin_lock_irqsave(&cpu_buffer->reader_lock, flags);
 __raw_spin_lock(&cpu_buffer->lock);
 rb_iter_reset(iter);
 __raw_spin_unlock(&cpu_buffer->lock);
 spin_unlock_irqrestore(&cpu_buffer->reader_lock, flags);

 return iter;
}
