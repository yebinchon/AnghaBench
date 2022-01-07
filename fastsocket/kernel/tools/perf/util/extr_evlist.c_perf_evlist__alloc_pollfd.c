
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pollfd {int dummy; } ;
struct perf_evlist {int nr_entries; int * pollfd; TYPE_1__* threads; int cpus; } ;
struct TYPE_2__ {int nr; } ;


 int ENOMEM ;
 int cpu_map__nr (int ) ;
 int * malloc (int) ;

__attribute__((used)) static int perf_evlist__alloc_pollfd(struct perf_evlist *evlist)
{
 int nfds = cpu_map__nr(evlist->cpus) * evlist->threads->nr * evlist->nr_entries;
 evlist->pollfd = malloc(sizeof(struct pollfd) * nfds);
 return evlist->pollfd != ((void*)0) ? 0 : -ENOMEM;
}
