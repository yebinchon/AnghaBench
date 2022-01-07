
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {scalar_t__ name; int idx; } ;
struct perf_evlist {int dummy; } ;


 struct perf_evsel* perf_evlist__find_by_index (struct perf_evlist*,int ) ;
 scalar_t__ strdup (scalar_t__) ;

__attribute__((used)) static void
perf_evlist__set_event_name(struct perf_evlist *evlist,
       struct perf_evsel *event)
{
 struct perf_evsel *evsel;

 if (!event->name)
  return;

 evsel = perf_evlist__find_by_index(evlist, event->idx);
 if (!evsel)
  return;

 if (evsel->name)
  return;

 evsel->name = strdup(event->name);
}
