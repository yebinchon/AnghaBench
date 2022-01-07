
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int * fd; } ;


 int perf_evsel__close_fd (struct perf_evsel*,int,int) ;
 int perf_evsel__free_fd (struct perf_evsel*) ;

void perf_evsel__close(struct perf_evsel *evsel, int ncpus, int nthreads)
{
 if (evsel->fd == ((void*)0))
  return;

 perf_evsel__close_fd(evsel, ncpus, nthreads);
 perf_evsel__free_fd(evsel);
 evsel->fd = ((void*)0);
}
