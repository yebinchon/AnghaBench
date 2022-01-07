
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct trace_iterator {TYPE_1__* tr; struct ring_buffer_iter** buffer_iter; } ;
struct trace_entry {int dummy; } ;
struct ring_buffer_iter {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_2__ {int buffer; } ;


 int ftrace_disable_cpu () ;
 int ftrace_enable_cpu () ;
 struct trace_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 struct ring_buffer_event* ring_buffer_iter_peek (struct ring_buffer_iter*,int *) ;
 struct ring_buffer_event* ring_buffer_peek (int ,int,int *) ;

__attribute__((used)) static struct trace_entry *
peek_next_entry(struct trace_iterator *iter, int cpu, u64 *ts)
{
 struct ring_buffer_event *event;
 struct ring_buffer_iter *buf_iter = iter->buffer_iter[cpu];


 ftrace_disable_cpu();

 if (buf_iter)
  event = ring_buffer_iter_peek(buf_iter, ts);
 else
  event = ring_buffer_peek(iter->tr->buffer, cpu, ts);

 ftrace_enable_cpu();

 return event ? ring_buffer_event_data(event) : ((void*)0);
}
