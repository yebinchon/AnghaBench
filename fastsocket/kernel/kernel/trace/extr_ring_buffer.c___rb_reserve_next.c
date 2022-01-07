
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ring_buffer_per_cpu {struct buffer_page* tail_page; struct buffer_page* commit_page; } ;
struct ring_buffer_event {int dummy; } ;
struct buffer_page {TYPE_1__* page; int entries; int write; } ;
struct TYPE_2__ {int time_stamp; } ;


 unsigned long BUF_PAGE_SIZE ;
 unsigned long RB_WRITE_MASK ;
 struct ring_buffer_event* __rb_page_index (struct buffer_page*,unsigned long) ;
 int barrier () ;
 int bitfield ;
 int kmemcheck_annotate_bitfield (struct ring_buffer_event*,int ) ;
 scalar_t__ likely (int) ;
 unsigned long local_add_return (unsigned long,int *) ;
 int local_inc (int *) ;
 struct ring_buffer_event* rb_move_tail (struct ring_buffer_per_cpu*,unsigned long,unsigned long,struct buffer_page*,struct buffer_page*,int *) ;
 int rb_update_event (struct ring_buffer_event*,unsigned int,unsigned long) ;

__attribute__((used)) static struct ring_buffer_event *
__rb_reserve_next(struct ring_buffer_per_cpu *cpu_buffer,
    unsigned type, unsigned long length, u64 *ts)
{
 struct buffer_page *tail_page, *commit_page;
 struct ring_buffer_event *event;
 unsigned long tail, write;

 commit_page = cpu_buffer->commit_page;

 barrier();
 tail_page = cpu_buffer->tail_page;
 write = local_add_return(length, &tail_page->write);


 write &= RB_WRITE_MASK;
 tail = write - length;


 if (write > BUF_PAGE_SIZE)
  return rb_move_tail(cpu_buffer, length, tail,
        commit_page, tail_page, ts);



 event = __rb_page_index(tail_page, tail);
 kmemcheck_annotate_bitfield(event, bitfield);
 rb_update_event(event, type, length);


 if (likely(!type))
  local_inc(&tail_page->entries);





 if (!tail)
  tail_page->page->time_stamp = *ts;

 return event;
}
