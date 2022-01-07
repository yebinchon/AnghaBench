
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {scalar_t__ time_delta; int type_len; } ;


 int RINGBUF_TYPE_PADDING ;

__attribute__((used)) static void rb_event_set_padding(struct ring_buffer_event *event)
{

 event->type_len = RINGBUF_TYPE_PADDING;
 event->time_delta = 0;
}
