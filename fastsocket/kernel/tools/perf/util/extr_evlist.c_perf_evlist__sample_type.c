
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int sample_type; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int dummy; } ;


 struct perf_evsel* perf_evlist__first (struct perf_evlist*) ;

u64 perf_evlist__sample_type(struct perf_evlist *evlist)
{
 struct perf_evsel *first = perf_evlist__first(evlist);
 return first->attr.sample_type;
}
