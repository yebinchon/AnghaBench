
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int dummy; } ;
struct ring_buffer_event {unsigned long* array; int time_delta; int type_len; } ;
struct buffer_page {int write; } ;


 unsigned long BUF_PAGE_SIZE ;
 unsigned long RB_EVNT_HDR_SIZE ;
 unsigned long RB_EVNT_MIN_SIZE ;
 int RINGBUF_TYPE_PADDING ;
 struct ring_buffer_event* __rb_page_index (struct buffer_page*,unsigned long) ;
 int bitfield ;
 int kmemcheck_annotate_bitfield (struct ring_buffer_event*,int ) ;
 int local_sub (unsigned long,int *) ;
 int rb_event_set_padding (struct ring_buffer_event*) ;

__attribute__((used)) static inline void
rb_reset_tail(struct ring_buffer_per_cpu *cpu_buffer,
       struct buffer_page *tail_page,
       unsigned long tail, unsigned long length)
{
 struct ring_buffer_event *event;





 if (tail >= BUF_PAGE_SIZE) {
  local_sub(length, &tail_page->write);
  return;
 }

 event = __rb_page_index(tail_page, tail);
 kmemcheck_annotate_bitfield(event, bitfield);
 if (tail > (BUF_PAGE_SIZE - RB_EVNT_MIN_SIZE)) {



  rb_event_set_padding(event);


  local_sub(length, &tail_page->write);
  return;
 }


 event->array[0] = (BUF_PAGE_SIZE - tail) - RB_EVNT_HDR_SIZE;
 event->type_len = RINGBUF_TYPE_PADDING;

 event->time_delta = 1;


 length = (tail + length) - BUF_PAGE_SIZE;
 local_sub(length, &tail_page->write);
}
