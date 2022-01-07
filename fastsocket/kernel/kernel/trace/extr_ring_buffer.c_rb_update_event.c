
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {unsigned int type_len; unsigned int* array; } ;


 int BUG () ;
 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int RB_ALIGNMENT ;
 unsigned int RB_EVNT_HDR_SIZE ;
 unsigned int RB_MAX_SMALL_DATA ;




__attribute__((used)) static void
rb_update_event(struct ring_buffer_event *event,
    unsigned type, unsigned length)
{
 event->type_len = type;

 switch (type) {

 case 130:
 case 129:
 case 128:
  break;

 case 0:
  length -= RB_EVNT_HDR_SIZE;
  if (length > RB_MAX_SMALL_DATA)
   event->array[0] = length;
  else
   event->type_len = DIV_ROUND_UP(length, RB_ALIGNMENT);
  break;
 default:
  BUG();
 }
}
