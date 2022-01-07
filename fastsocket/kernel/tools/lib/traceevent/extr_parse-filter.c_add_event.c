
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_list {struct event_format* event; struct event_list* next; } ;
struct event_format {int dummy; } ;


 struct event_list* malloc_or_die (int) ;

__attribute__((used)) static void add_event(struct event_list **events,
        struct event_format *event)
{
 struct event_list *list;

 list = malloc_or_die(sizeof(*list));
 list->next = *events;
 *events = list;
 list->event = event;
}
