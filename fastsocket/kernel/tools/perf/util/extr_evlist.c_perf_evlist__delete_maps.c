
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evlist {int * threads; int * cpus; } ;


 int cpu_map__delete (int *) ;
 int thread_map__delete (int *) ;

void perf_evlist__delete_maps(struct perf_evlist *evlist)
{
 cpu_map__delete(evlist->cpus);
 thread_map__delete(evlist->threads);
 evlist->cpus = ((void*)0);
 evlist->threads = ((void*)0);
}
