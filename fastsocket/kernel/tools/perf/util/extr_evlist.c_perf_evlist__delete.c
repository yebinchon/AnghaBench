
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evlist {int dummy; } ;


 int free (struct perf_evlist*) ;
 int perf_evlist__exit (struct perf_evlist*) ;
 int perf_evlist__purge (struct perf_evlist*) ;

void perf_evlist__delete(struct perf_evlist *evlist)
{
 perf_evlist__purge(evlist);
 perf_evlist__exit(evlist);
 free(evlist);
}
