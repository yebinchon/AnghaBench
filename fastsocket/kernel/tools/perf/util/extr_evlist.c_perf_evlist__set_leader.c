
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evlist {int entries; scalar_t__ nr_entries; } ;


 int __perf_evlist__set_leader (int *) ;

void perf_evlist__set_leader(struct perf_evlist *evlist)
{
 if (evlist->nr_entries)
  __perf_evlist__set_leader(&evlist->entries);
}
