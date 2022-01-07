
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int dummy; } ;
struct perf_evlist {struct perf_evsel* selected; } ;



void perf_evlist__set_selected(struct perf_evlist *evlist,
          struct perf_evsel *evsel)
{
 evlist->selected = evsel;
}
