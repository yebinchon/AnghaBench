
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {struct event* next; } ;


 struct event* pending_events ;

__attribute__((used)) static void
append (struct event *new_event)
{
  struct event **event = &pending_events;
  while ((*event) != ((void*)0))
    event = &((*event)->next);
  (*event) = new_event;
  (*event)->next = ((void*)0);
}
