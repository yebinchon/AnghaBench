
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct ftrace_event_call {int dummy; } ;


 int filter_check_discard (struct ftrace_event_call*,void*,struct ring_buffer*,struct ring_buffer_event*) ;

int filter_current_check_discard(struct ring_buffer *buffer,
     struct ftrace_event_call *call, void *rec,
     struct ring_buffer_event *event)
{
 return filter_check_discard(call, rec, buffer, event);
}
