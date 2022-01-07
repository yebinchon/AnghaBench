
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_map {int dummy; } ;
struct TYPE_2__ {int pid; } ;
struct perf_evlist {TYPE_1__ workload; int entries; int * heads; } ;
struct cpu_map {int dummy; } ;


 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int PERF_EVLIST__HLIST_SIZE ;
 int perf_evlist__set_maps (struct perf_evlist*,struct cpu_map*,struct thread_map*) ;

void perf_evlist__init(struct perf_evlist *evlist, struct cpu_map *cpus,
         struct thread_map *threads)
{
 int i;

 for (i = 0; i < PERF_EVLIST__HLIST_SIZE; ++i)
  INIT_HLIST_HEAD(&evlist->heads[i]);
 INIT_LIST_HEAD(&evlist->entries);
 perf_evlist__set_maps(evlist, cpus, threads);
 evlist->workload.pid = -1;
}
