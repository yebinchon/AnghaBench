
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {struct ring_buffer* buffer; } ;
struct special_entry {unsigned long arg1; unsigned long arg2; unsigned long arg3; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct ftrace_event_call {int dummy; } ;


 int TRACE_SPECIAL ;
 struct ftrace_event_call event_special ;
 int filter_check_discard (struct ftrace_event_call*,struct special_entry*,struct ring_buffer*,struct ring_buffer_event*) ;
 struct special_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 struct ring_buffer_event* trace_buffer_lock_reserve (struct ring_buffer*,int ,int,int ,int) ;
 int trace_buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*,int ,int) ;

__attribute__((used)) static void
ftrace_trace_special(void *__tr,
       unsigned long arg1, unsigned long arg2, unsigned long arg3,
       int pc)
{
 struct ftrace_event_call *call = &event_special;
 struct ring_buffer_event *event;
 struct trace_array *tr = __tr;
 struct ring_buffer *buffer = tr->buffer;
 struct special_entry *entry;

 event = trace_buffer_lock_reserve(buffer, TRACE_SPECIAL,
       sizeof(*entry), 0, pc);
 if (!event)
  return;
 entry = ring_buffer_event_data(event);
 entry->arg1 = arg1;
 entry->arg2 = arg2;
 entry->arg3 = arg3;

 if (!filter_check_discard(call, entry, buffer, event))
  trace_buffer_unlock_commit(buffer, event, 0, pc);
}
