
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_map {int dummy; } ;
struct perf_evsel {int dummy; } ;
struct TYPE_2__ {int map; } ;


 int __perf_evsel__open (struct perf_evsel*,int *,struct thread_map*) ;
 TYPE_1__ empty_cpu_map ;

int perf_evsel__open_per_thread(struct perf_evsel *evsel,
    struct thread_map *threads)
{
 return __perf_evsel__open(evsel, &empty_cpu_map.map, threads);
}
