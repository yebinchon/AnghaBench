
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int record_disabled; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;


 int atomic_dec (int *) ;
 int kfree (struct ring_buffer_iter*) ;

void
ring_buffer_read_finish(struct ring_buffer_iter *iter)
{
 struct ring_buffer_per_cpu *cpu_buffer = iter->cpu_buffer;

 atomic_dec(&cpu_buffer->record_disabled);
 kfree(iter);
}
