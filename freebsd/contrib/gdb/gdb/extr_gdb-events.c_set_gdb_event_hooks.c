
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdb_events {int dummy; } ;


 struct gdb_events* current_event_hooks ;
 struct gdb_events queue_event_hooks ;

struct gdb_events *
set_gdb_event_hooks (struct gdb_events *vector)
{
  struct gdb_events *old_events = current_event_hooks;
  if (vector == ((void*)0))
    current_event_hooks = &queue_event_hooks;
  else
    current_event_hooks = vector;
  return old_events;
}
