
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int config; } ;
struct perf_evsel {struct event_format* tp_format; TYPE_2__ attr; } ;
struct TYPE_3__ {int args; } ;
struct event_format {char* system; char* name; TYPE_1__ print_fmt; } ;


 int define_event_symbols (struct event_format*,char*,int ) ;
 struct event_format** events ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static inline struct event_format *find_cache_event(struct perf_evsel *evsel)
{
 static char ev_name[256];
 struct event_format *event;
 int type = evsel->attr.config;






 if (events[type])
  return events[type];

 events[type] = event = evsel->tp_format;
 if (!event)
  return ((void*)0);

 sprintf(ev_name, "%s__%s", event->system, event->name);

 define_event_symbols(event, ev_name, event->print_fmt.args);

 return event;
}
