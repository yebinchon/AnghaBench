
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_map {int dummy; } ;
struct perf_evlist {struct thread_map* threads; struct cpu_map* cpus; } ;
struct cpu_map {int dummy; } ;



__attribute__((used)) static inline void perf_evlist__set_maps(struct perf_evlist *evlist,
      struct cpu_map *cpus,
      struct thread_map *threads)
{
 evlist->cpus = cpus;
 evlist->threads = threads;
}
