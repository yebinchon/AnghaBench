
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int node; } ;
struct perf_evlist {int nr_entries; int entries; } ;


 int list_add_tail (int *,int *) ;

void perf_evlist__add(struct perf_evlist *evlist, struct perf_evsel *entry)
{
 list_add_tail(&entry->node, &evlist->entries);
 ++evlist->nr_entries;
}
