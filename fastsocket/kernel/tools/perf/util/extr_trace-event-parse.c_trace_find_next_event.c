
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int nr_events; struct event_format** events; } ;
struct event_format {int dummy; } ;



struct event_format *trace_find_next_event(struct pevent *pevent,
        struct event_format *event)
{
 static int idx;

 if (!pevent || !pevent->events)
  return ((void*)0);

 if (!event) {
  idx = 0;
  return pevent->events[0];
 }

 if (idx < pevent->nr_events && event == pevent->events[idx]) {
  idx++;
  if (idx == pevent->nr_events)
   return ((void*)0);
  return pevent->events[idx];
 }

 for (idx = 1; idx < pevent->nr_events; idx++) {
  if (event == pevent->events[idx - 1])
   return pevent->events[idx];
 }
 return ((void*)0);
}
