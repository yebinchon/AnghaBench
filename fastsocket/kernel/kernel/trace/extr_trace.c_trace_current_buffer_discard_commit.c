
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;


 int ring_buffer_discard_commit (struct ring_buffer*,struct ring_buffer_event*) ;

void trace_current_buffer_discard_commit(struct ring_buffer *buffer,
      struct ring_buffer_event *event)
{
 ring_buffer_discard_commit(buffer, event);
}
