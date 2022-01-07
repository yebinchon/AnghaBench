
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ring_buffer_per_cpu {scalar_t__ commit_page; scalar_t__ tail_page; scalar_t__ reader_page; int commit_overrun; struct ring_buffer* buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int flags; } ;
struct buffer_page {TYPE_1__* page; int list; } ;
struct TYPE_2__ {int time_stamp; } ;


 int EAGAIN ;
 struct ring_buffer_event* ERR_PTR (int ) ;
 int RB_FL_OVERWRITE ;
 int local_inc (int *) ;
 int rb_handle_head_page (struct ring_buffer_per_cpu*,struct buffer_page*,struct buffer_page*) ;
 int rb_inc_page (struct ring_buffer_per_cpu*,struct buffer_page**) ;
 scalar_t__ rb_is_head_page (struct ring_buffer_per_cpu*,struct buffer_page*,int *) ;
 int rb_is_reader_page (scalar_t__) ;
 int rb_reset_tail (struct ring_buffer_per_cpu*,struct buffer_page*,unsigned long,unsigned long) ;
 int rb_tail_page_update (struct ring_buffer_per_cpu*,struct buffer_page*,struct buffer_page*) ;
 int rb_time_stamp (struct ring_buffer*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ring_buffer_event *
rb_move_tail(struct ring_buffer_per_cpu *cpu_buffer,
      unsigned long length, unsigned long tail,
      struct buffer_page *commit_page,
      struct buffer_page *tail_page, u64 *ts)
{
 struct ring_buffer *buffer = cpu_buffer->buffer;
 struct buffer_page *next_page;
 int ret;

 next_page = tail_page;

 rb_inc_page(cpu_buffer, &next_page);






 if (unlikely(next_page == commit_page)) {
  local_inc(&cpu_buffer->commit_overrun);
  goto out_reset;
 }
 if (rb_is_head_page(cpu_buffer, next_page, &tail_page->list)) {





  if (!rb_is_reader_page(cpu_buffer->commit_page)) {




   if (!(buffer->flags & RB_FL_OVERWRITE))
    goto out_reset;

   ret = rb_handle_head_page(cpu_buffer,
        tail_page,
        next_page);
   if (ret < 0)
    goto out_reset;
   if (ret)
    goto out_again;
  } else {
   if (unlikely((cpu_buffer->commit_page !=
          cpu_buffer->tail_page) &&
         (cpu_buffer->commit_page ==
          cpu_buffer->reader_page))) {
    local_inc(&cpu_buffer->commit_overrun);
    goto out_reset;
   }
  }
 }

 ret = rb_tail_page_update(cpu_buffer, tail_page, next_page);
 if (ret) {




  *ts = rb_time_stamp(buffer);
  next_page->page->time_stamp = *ts;
 }

 out_again:

 rb_reset_tail(cpu_buffer, tail_page, tail, length);


 return ERR_PTR(-EAGAIN);

 out_reset:

 rb_reset_tail(cpu_buffer, tail_page, tail, length);

 return ((void*)0);
}
