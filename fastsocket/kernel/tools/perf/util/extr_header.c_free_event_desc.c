
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct perf_evsel {struct perf_evsel* id; struct perf_evsel* name; TYPE_1__ attr; } ;


 int free (struct perf_evsel*) ;

__attribute__((used)) static void free_event_desc(struct perf_evsel *events)
{
 struct perf_evsel *evsel;

 if (!events)
  return;

 for (evsel = events; evsel->attr.size; evsel++) {
  if (evsel->name)
   free(evsel->name);
  if (evsel->id)
   free(evsel->id);
 }

 free(events);
}
