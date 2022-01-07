
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ring_buffer_event {int dummy; } ;
typedef enum event_status { ____Placeholder_event_status } event_status ;


 int EVENT_DROPPED ;
 int EVENT_FOUND ;
 int KILL_TEST () ;
 int buffer ;
 int read ;
 struct ring_buffer_event* ring_buffer_consume (int ,int,int *) ;
 int* ring_buffer_event_data (struct ring_buffer_event*) ;

__attribute__((used)) static enum event_status read_event(int cpu)
{
 struct ring_buffer_event *event;
 int *entry;
 u64 ts;

 event = ring_buffer_consume(buffer, cpu, &ts);
 if (!event)
  return EVENT_DROPPED;

 entry = ring_buffer_event_data(event);
 if (*entry != cpu) {
  KILL_TEST();
  return EVENT_DROPPED;
 }

 read++;
 return EVENT_FOUND;
}
