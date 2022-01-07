
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evlist {int dummy; } ;
struct perf_event_attr {int dummy; } ;


 int event_attr_init (struct perf_event_attr*) ;
 int perf_evlist__add_attrs (struct perf_evlist*,struct perf_event_attr*,size_t) ;

int __perf_evlist__add_default_attrs(struct perf_evlist *evlist,
         struct perf_event_attr *attrs, size_t nr_attrs)
{
 size_t i;

 for (i = 0; i < nr_attrs; i++)
  event_attr_init(attrs + i);

 return perf_evlist__add_attrs(evlist, attrs, nr_attrs);
}
