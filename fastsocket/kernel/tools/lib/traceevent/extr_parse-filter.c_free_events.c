
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_list {struct event_list* next; } ;


 int free (struct event_list*) ;

__attribute__((used)) static void free_events(struct event_list *events)
{
 struct event_list *event;

 while (events) {
  event = events;
  events = events->next;
  free(event);
 }
}
