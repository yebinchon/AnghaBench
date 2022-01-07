
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_map {int dummy; } ;
struct perf_evlist {int dummy; } ;
struct cpu_map {int dummy; } ;


 int perf_evlist__init (struct perf_evlist*,struct cpu_map*,struct thread_map*) ;
 struct perf_evlist* zalloc (int) ;

struct perf_evlist *perf_evlist__new(struct cpu_map *cpus,
         struct thread_map *threads)
{
 struct perf_evlist *evlist = zalloc(sizeof(*evlist));

 if (evlist != ((void*)0))
  perf_evlist__init(evlist, cpus, threads);

 return evlist;
}
