
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer_per_cpu {TYPE_1__* commit_page; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_2__ {void* page; } ;


 unsigned long PAGE_MASK ;
 unsigned long rb_commit_index (struct ring_buffer_per_cpu*) ;
 unsigned long rb_event_index (struct ring_buffer_event*) ;

__attribute__((used)) static inline int
rb_event_is_commit(struct ring_buffer_per_cpu *cpu_buffer,
     struct ring_buffer_event *event)
{
 unsigned long addr = (unsigned long)event;
 unsigned long index;

 index = rb_event_index(event);
 addr &= PAGE_MASK;

 return cpu_buffer->commit_page->page == (void *)addr &&
  rb_commit_index(cpu_buffer) == index;
}
