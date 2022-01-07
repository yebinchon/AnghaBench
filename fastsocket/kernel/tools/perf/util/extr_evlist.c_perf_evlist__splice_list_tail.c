
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evlist {int nr_entries; int entries; } ;
struct list_head {int dummy; } ;


 int list_splice_tail (struct list_head*,int *) ;

void perf_evlist__splice_list_tail(struct perf_evlist *evlist,
       struct list_head *list,
       int nr_entries)
{
 list_splice_tail(list, &evlist->entries);
 evlist->nr_entries += nr_entries;
}
