
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int last_type; int nr_events; struct event_format** sort_events; int events; } ;
struct event_format {int dummy; } ;
typedef enum event_sort_type { ____Placeholder_event_sort_type } event_sort_type ;





 int events_id_cmp (void const*,void const*) ;
 int events_name_cmp (void const*,void const*) ;
 int events_system_cmp (void const*,void const*) ;
 struct event_format** malloc (int) ;
 int memcpy (struct event_format**,int ,int) ;
 int qsort (struct event_format**,size_t,int,int (*) (void const*,void const*)) ;

struct event_format **pevent_list_events(struct pevent *pevent, enum event_sort_type sort_type)
{
 struct event_format **events;
 int (*sort)(const void *a, const void *b);

 events = pevent->sort_events;

 if (events && pevent->last_type == sort_type)
  return events;

 if (!events) {
  events = malloc(sizeof(*events) * (pevent->nr_events + 1));
  if (!events)
   return ((void*)0);

  memcpy(events, pevent->events, sizeof(*events) * pevent->nr_events);
  events[pevent->nr_events] = ((void*)0);

  pevent->sort_events = events;


  if (sort_type == 130) {
   pevent->last_type = sort_type;
   return events;
  }
 }

 switch (sort_type) {
 case 130:
  sort = events_id_cmp;
  break;
 case 129:
  sort = events_name_cmp;
  break;
 case 128:
  sort = events_system_cmp;
  break;
 default:
  return events;
 }

 qsort(events, pevent->nr_events, sizeof(*events), sort);
 pevent->last_type = sort_type;

 return events;
}
