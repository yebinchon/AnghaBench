
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int time_delta; int type_len; scalar_t__* array; } ;


 scalar_t__ RB_EVNT_HDR_SIZE ;
 int RINGBUF_TYPE_PADDING ;
 scalar_t__ rb_event_data_length (struct ring_buffer_event*) ;

__attribute__((used)) static inline void rb_event_discard(struct ring_buffer_event *event)
{

 event->array[0] = rb_event_data_length(event) - RB_EVNT_HDR_SIZE;
 event->type_len = RINGBUF_TYPE_PADDING;

 if (!event->time_delta)
  event->time_delta = 1;
}
