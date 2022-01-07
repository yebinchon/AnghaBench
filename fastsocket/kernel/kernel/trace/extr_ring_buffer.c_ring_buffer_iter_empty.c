
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {scalar_t__ commit_page; } ;
struct ring_buffer_iter {scalar_t__ head_page; scalar_t__ head; struct ring_buffer_per_cpu* cpu_buffer; } ;


 scalar_t__ rb_commit_index (struct ring_buffer_per_cpu*) ;

int ring_buffer_iter_empty(struct ring_buffer_iter *iter)
{
 struct ring_buffer_per_cpu *cpu_buffer;

 cpu_buffer = iter->cpu_buffer;

 return iter->head_page == cpu_buffer->commit_page &&
  iter->head == rb_commit_index(cpu_buffer);
}
