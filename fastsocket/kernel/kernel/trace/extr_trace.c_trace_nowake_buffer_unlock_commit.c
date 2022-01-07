
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;


 int __trace_buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*,unsigned long,int,int ) ;

void trace_nowake_buffer_unlock_commit(struct ring_buffer *buffer,
           struct ring_buffer_event *event,
           unsigned long flags, int pc)
{
 __trace_buffer_unlock_commit(buffer, event, flags, pc, 0);
}
