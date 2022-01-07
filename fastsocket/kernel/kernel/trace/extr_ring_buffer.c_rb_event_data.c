
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {scalar_t__ type_len; int * array; } ;


 int BUG_ON (int) ;
 scalar_t__ RINGBUF_TYPE_DATA_TYPE_LEN_MAX ;

__attribute__((used)) static void *
rb_event_data(struct ring_buffer_event *event)
{
 BUG_ON(event->type_len > RINGBUF_TYPE_DATA_TYPE_LEN_MAX);

 if (event->type_len)
  return (void *)&event->array[0];

 return (void *)&event->array[1];
}
