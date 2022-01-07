
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ring_buffer_per_cpu {int read_stamp; } ;
struct ring_buffer_event {int type_len; int time_delta; int * array; } ;


 int BUG () ;




 int TS_SHIFT ;

__attribute__((used)) static void
rb_update_read_stamp(struct ring_buffer_per_cpu *cpu_buffer,
       struct ring_buffer_event *event)
{
 u64 delta;

 switch (event->type_len) {
 case 130:
  return;

 case 129:
  delta = event->array[0];
  delta <<= TS_SHIFT;
  delta += event->time_delta;
  cpu_buffer->read_stamp += delta;
  return;

 case 128:

  return;

 case 131:
  cpu_buffer->read_stamp += event->time_delta;
  return;

 default:
  BUG();
 }
 return;
}
