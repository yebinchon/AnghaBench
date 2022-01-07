
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ event_id; char* name; } ;


 int trace_event_count ;
 TYPE_1__* trace_events ;

char *perf_header__find_event(u64 id)
{
 int i;
 for (i = 0 ; i < trace_event_count; i++) {
  if (trace_events[i].event_id == id)
   return trace_events[i].name;
 }
 return ((void*)0);
}
