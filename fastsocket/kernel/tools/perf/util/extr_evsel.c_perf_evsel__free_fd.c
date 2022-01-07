
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int * fd; } ;


 int xyarray__delete (int *) ;

void perf_evsel__free_fd(struct perf_evsel *evsel)
{
 xyarray__delete(evsel->fd);
 evsel->fd = ((void*)0);
}
