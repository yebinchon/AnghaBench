
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ring_buffer_per_cpu {scalar_t__ tail_page; scalar_t__ commit_page; scalar_t__ write_stamp; int buffer; int commits; int committing; } ;
struct ring_buffer_event {scalar_t__ time_delta; } ;
struct ring_buffer {int dummy; } ;


 struct ring_buffer* ACCESS_ONCE (int ) ;
 int EAGAIN ;
 int EBUSY ;
 int PTR_ERR (struct ring_buffer_event*) ;
 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;
 struct ring_buffer_event* __rb_reserve_next (struct ring_buffer_per_cpu*,int ,unsigned long,scalar_t__*) ;
 int barrier () ;
 scalar_t__ likely (int) ;
 int local_dec (int *) ;
 int rb_add_time_stamp (struct ring_buffer_per_cpu*,scalar_t__*,scalar_t__*) ;
 unsigned long rb_calculate_event_length (unsigned long) ;
 scalar_t__ rb_commit_index (struct ring_buffer_per_cpu*) ;
 int rb_end_commit (struct ring_buffer_per_cpu*) ;
 int rb_event_is_commit (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ;
 scalar_t__ rb_page_write (scalar_t__) ;
 int rb_start_commit (struct ring_buffer_per_cpu*) ;
 scalar_t__ rb_time_stamp (int ) ;
 int test_time_stamp (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ring_buffer_event *
rb_reserve_next_event(struct ring_buffer *buffer,
        struct ring_buffer_per_cpu *cpu_buffer,
        unsigned long length)
{
 struct ring_buffer_event *event;
 u64 ts, delta = 0;
 int commit = 0;
 int nr_loops = 0;

 rb_start_commit(cpu_buffer);
 length = rb_calculate_event_length(length);
 again:
 if (RB_WARN_ON(cpu_buffer, ++nr_loops > 1000))
  goto out_fail;

 ts = rb_time_stamp(cpu_buffer->buffer);
 if (likely(cpu_buffer->tail_page == cpu_buffer->commit_page &&
     rb_page_write(cpu_buffer->tail_page) ==
     rb_commit_index(cpu_buffer))) {
  u64 diff;

  diff = ts - cpu_buffer->write_stamp;


  barrier();


  if (unlikely(ts < cpu_buffer->write_stamp))
   goto get_event;

  delta = diff;
  if (unlikely(test_time_stamp(delta))) {

   commit = rb_add_time_stamp(cpu_buffer, &ts, &delta);
   if (commit == -EBUSY)
    goto out_fail;

   if (commit == -EAGAIN)
    goto again;

   RB_WARN_ON(cpu_buffer, commit < 0);
  }
 }

 get_event:
 event = __rb_reserve_next(cpu_buffer, 0, length, &ts);
 if (unlikely(PTR_ERR(event) == -EAGAIN))
  goto again;

 if (!event)
  goto out_fail;

 if (!rb_event_is_commit(cpu_buffer, event))
  delta = 0;

 event->time_delta = delta;

 return event;

 out_fail:
 rb_end_commit(cpu_buffer);
 return ((void*)0);
}
