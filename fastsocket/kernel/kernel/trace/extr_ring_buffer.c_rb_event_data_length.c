
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int type_len; unsigned int* array; } ;


 unsigned int RB_ALIGNMENT ;
 int RB_EVNT_HDR_SIZE ;

__attribute__((used)) static unsigned
rb_event_data_length(struct ring_buffer_event *event)
{
 unsigned length;

 if (event->type_len)
  length = event->type_len * RB_ALIGNMENT;
 else
  length = event->array[0];
 return length + RB_EVNT_HDR_SIZE;
}
