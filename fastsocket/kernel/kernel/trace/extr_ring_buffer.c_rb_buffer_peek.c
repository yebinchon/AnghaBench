
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ring_buffer_per_cpu {int cpu; int buffer; scalar_t__ read_stamp; } ;
struct ring_buffer_event {int type_len; scalar_t__ time_delta; } ;
struct buffer_page {int dummy; } ;


 int BUG () ;
 int RB_TIMESTAMPS_PER_PAGE ;
 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;




 int rb_advance_reader (struct ring_buffer_per_cpu*) ;
 struct buffer_page* rb_get_reader_page (struct ring_buffer_per_cpu*) ;
 int rb_null_event (struct ring_buffer_event*) ;
 struct ring_buffer_event* rb_reader_event (struct ring_buffer_per_cpu*) ;
 int ring_buffer_normalize_time_stamp (int ,int ,scalar_t__*) ;

__attribute__((used)) static struct ring_buffer_event *
rb_buffer_peek(struct ring_buffer_per_cpu *cpu_buffer, u64 *ts)
{
 struct ring_buffer_event *event;
 struct buffer_page *reader;
 int nr_loops = 0;

 again:






 if (RB_WARN_ON(cpu_buffer, ++nr_loops > RB_TIMESTAMPS_PER_PAGE))
  return ((void*)0);

 reader = rb_get_reader_page(cpu_buffer);
 if (!reader)
  return ((void*)0);

 event = rb_reader_event(cpu_buffer);

 switch (event->type_len) {
 case 130:
  if (rb_null_event(event))
   RB_WARN_ON(cpu_buffer, 1);
  return event;

 case 129:

  rb_advance_reader(cpu_buffer);
  goto again;

 case 128:

  rb_advance_reader(cpu_buffer);
  goto again;

 case 131:
  if (ts) {
   *ts = cpu_buffer->read_stamp + event->time_delta;
   ring_buffer_normalize_time_stamp(cpu_buffer->buffer,
        cpu_buffer->cpu, ts);
  }
  return event;

 default:
  BUG();
 }

 return ((void*)0);
}
