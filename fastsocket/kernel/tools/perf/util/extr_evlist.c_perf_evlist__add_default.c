
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int name; } ;
struct perf_evlist {int dummy; } ;
struct perf_event_attr {int config; int type; } ;


 int ENOMEM ;
 int PERF_COUNT_HW_CPU_CYCLES ;
 int PERF_TYPE_HARDWARE ;
 int event_attr_init (struct perf_event_attr*) ;
 int perf_evlist__add (struct perf_evlist*,struct perf_evsel*) ;
 int perf_evsel__delete (struct perf_evsel*) ;
 struct perf_evsel* perf_evsel__new (struct perf_event_attr*,int ) ;
 int strdup (char*) ;

int perf_evlist__add_default(struct perf_evlist *evlist)
{
 struct perf_event_attr attr = {
  .type = PERF_TYPE_HARDWARE,
  .config = PERF_COUNT_HW_CPU_CYCLES,
 };
 struct perf_evsel *evsel;

 event_attr_init(&attr);

 evsel = perf_evsel__new(&attr, 0);
 if (evsel == ((void*)0))
  goto error;


 evsel->name = strdup("cycles");
 if (!evsel->name)
  goto error_free;

 perf_evlist__add(evlist, evsel);
 return 0;
error_free:
 perf_evsel__delete(evsel);
error:
 return -ENOMEM;
}
