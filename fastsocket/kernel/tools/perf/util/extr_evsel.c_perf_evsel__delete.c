
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {struct perf_evsel* name; scalar_t__ tp_format; struct perf_evsel* group_name; int cgrp; } ;


 int close_cgroup (int ) ;
 int free (struct perf_evsel*) ;
 int perf_evsel__exit (struct perf_evsel*) ;
 int pevent_free_format (scalar_t__) ;

void perf_evsel__delete(struct perf_evsel *evsel)
{
 perf_evsel__exit(evsel);
 close_cgroup(evsel->cgrp);
 free(evsel->group_name);
 if (evsel->tp_format)
  pevent_free_format(evsel->tp_format);
 free(evsel->name);
 free(evsel);
}
