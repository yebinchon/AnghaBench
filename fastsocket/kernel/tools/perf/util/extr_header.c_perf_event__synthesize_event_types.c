
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_trace_event_type {int name; int event_id; } ;
struct perf_tool {int dummy; } ;
struct machine {int dummy; } ;
typedef int perf_event__handler_t ;


 int perf_event__synthesize_event_type (struct perf_tool*,int ,int ,int ,struct machine*) ;
 int pr_debug (char*) ;
 int trace_event_count ;
 struct perf_trace_event_type* trace_events ;

int perf_event__synthesize_event_types(struct perf_tool *tool,
           perf_event__handler_t process,
           struct machine *machine)
{
 struct perf_trace_event_type *type;
 int i, err = 0;

 for (i = 0; i < trace_event_count; i++) {
  type = &trace_events[i];

  err = perf_event__synthesize_event_type(tool, type->event_id,
       type->name, process,
       machine);
  if (err) {
   pr_debug("failed to create perf header event type\n");
   return err;
  }
 }

 return err;
}
