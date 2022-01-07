
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int record_disabled; int reader_lock; int lock; int committing; } ;
struct ring_buffer {int cpumask; struct ring_buffer_per_cpu** buffers; } ;


 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int ) ;
 int __raw_spin_lock (int *) ;
 int __raw_spin_unlock (int *) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int cpumask_test_cpu (int,int ) ;
 int local_read (int *) ;
 int rb_reset_cpu (struct ring_buffer_per_cpu*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ring_buffer_reset_cpu(struct ring_buffer *buffer, int cpu)
{
 struct ring_buffer_per_cpu *cpu_buffer = buffer->buffers[cpu];
 unsigned long flags;

 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  return;

 atomic_inc(&cpu_buffer->record_disabled);

 spin_lock_irqsave(&cpu_buffer->reader_lock, flags);

 if (RB_WARN_ON(cpu_buffer, local_read(&cpu_buffer->committing)))
  goto out;

 __raw_spin_lock(&cpu_buffer->lock);

 rb_reset_cpu(cpu_buffer);

 __raw_spin_unlock(&cpu_buffer->lock);

 out:
 spin_unlock_irqrestore(&cpu_buffer->reader_lock, flags);

 atomic_dec(&cpu_buffer->record_disabled);
}
