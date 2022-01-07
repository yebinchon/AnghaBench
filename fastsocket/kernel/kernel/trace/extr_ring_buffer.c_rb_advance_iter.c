
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {scalar_t__ commit_page; struct ring_buffer* buffer; } ;
struct ring_buffer_iter {scalar_t__ head; scalar_t__ head_page; struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;


 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;
 scalar_t__ rb_commit_index (struct ring_buffer_per_cpu*) ;
 unsigned int rb_event_length (struct ring_buffer_event*) ;
 int rb_inc_iter (struct ring_buffer_iter*) ;
 struct ring_buffer_event* rb_iter_head_event (struct ring_buffer_iter*) ;
 scalar_t__ rb_page_size (scalar_t__) ;
 int rb_update_iter_read_stamp (struct ring_buffer_iter*,struct ring_buffer_event*) ;

__attribute__((used)) static void rb_advance_iter(struct ring_buffer_iter *iter)
{
 struct ring_buffer *buffer;
 struct ring_buffer_per_cpu *cpu_buffer;
 struct ring_buffer_event *event;
 unsigned length;

 cpu_buffer = iter->cpu_buffer;
 buffer = cpu_buffer->buffer;




 if (iter->head >= rb_page_size(iter->head_page)) {

  if (iter->head_page == cpu_buffer->commit_page)
   return;
  rb_inc_iter(iter);
  return;
 }

 event = rb_iter_head_event(iter);

 length = rb_event_length(event);





 if (RB_WARN_ON(cpu_buffer,
         (iter->head_page == cpu_buffer->commit_page) &&
         (iter->head + length > rb_commit_index(cpu_buffer))))
  return;

 rb_update_iter_read_stamp(iter, event);

 iter->head += length;


 if ((iter->head >= rb_page_size(iter->head_page)) &&
     (iter->head_page != cpu_buffer->commit_page))
  rb_advance_iter(iter);
}
