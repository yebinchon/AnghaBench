
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_trace_event_type {int name; int event_id; } ;


 int ENOMEM ;
 scalar_t__ MAX_EVENT_NAME ;
 int memset (struct perf_trace_event_type*,int ,int) ;
 int pr_warning (char*,char const*) ;
 struct perf_trace_event_type* realloc (struct perf_trace_event_type*,int) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (int ,char const*,scalar_t__) ;
 int trace_event_count ;
 struct perf_trace_event_type* trace_events ;

int perf_header__push_event(u64 id, const char *name)
{
 struct perf_trace_event_type *nevents;

 if (strlen(name) > MAX_EVENT_NAME)
  pr_warning("Event %s will be truncated\n", name);

 nevents = realloc(trace_events, (trace_event_count + 1) * sizeof(*trace_events));
 if (nevents == ((void*)0))
  return -ENOMEM;
 trace_events = nevents;

 memset(&trace_events[trace_event_count], 0, sizeof(struct perf_trace_event_type));
 trace_events[trace_event_count].event_id = id;
 strncpy(trace_events[trace_event_count].name, name, MAX_EVENT_NAME - 1);
 trace_event_count++;
 return 0;
}
