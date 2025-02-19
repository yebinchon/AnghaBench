
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* func; } ;
struct perf_evsel {TYPE_1__ handler; } ;
struct perf_evlist {int nr_entries; } ;


 int perf_evlist__add (struct perf_evlist*,struct perf_evsel*) ;
 struct perf_evsel* perf_evsel__newtp (char const*,char const*,int ) ;

int perf_evlist__add_newtp(struct perf_evlist *evlist,
      const char *sys, const char *name, void *handler)
{
 struct perf_evsel *evsel;

 evsel = perf_evsel__newtp(sys, name, evlist->nr_entries);
 if (evsel == ((void*)0))
  return -1;

 evsel->handler.func = handler;
 perf_evlist__add(evlist, evsel);
 return 0;
}
