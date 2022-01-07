
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_mmap {int dummy; } ;
struct perf_evlist {int nr_mmaps; int * mmap; TYPE_1__* threads; int cpus; } ;
struct TYPE_2__ {int nr; } ;


 int ENOMEM ;
 scalar_t__ cpu_map__all (int ) ;
 int cpu_map__nr (int ) ;
 int * zalloc (int) ;

__attribute__((used)) static int perf_evlist__alloc_mmap(struct perf_evlist *evlist)
{
 evlist->nr_mmaps = cpu_map__nr(evlist->cpus);
 if (cpu_map__all(evlist->cpus))
  evlist->nr_mmaps = evlist->threads->nr;
 evlist->mmap = zalloc(evlist->nr_mmaps * sizeof(struct perf_mmap));
 return evlist->mmap != ((void*)0) ? 0 : -ENOMEM;
}
