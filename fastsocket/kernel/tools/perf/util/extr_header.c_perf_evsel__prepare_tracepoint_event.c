
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent {int dummy; } ;
struct TYPE_2__ {int config; } ;
struct perf_evsel {struct event_format* tp_format; int * name; TYPE_1__ attr; } ;
struct event_format {char* system; char* name; } ;
typedef int bf ;


 struct event_format* pevent_find_event (struct pevent*,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int * strdup (char*) ;

__attribute__((used)) static int perf_evsel__prepare_tracepoint_event(struct perf_evsel *evsel,
      struct pevent *pevent)
{
 struct event_format *event;
 char bf[128];


 if (evsel->tp_format)
  return 0;

 event = pevent_find_event(pevent, evsel->attr.config);
 if (event == ((void*)0))
  return -1;

 if (!evsel->name) {
  snprintf(bf, sizeof(bf), "%s:%s", event->system, event->name);
  evsel->name = strdup(bf);
  if (evsel->name == ((void*)0))
   return -1;
 }

 evsel->tp_format = event;
 return 0;
}
