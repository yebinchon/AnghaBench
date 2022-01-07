
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_evsel {int dummy; } ;
struct cpu_map {int dummy; } ;
struct TYPE_2__ {int map; } ;


 int __perf_evsel__open (struct perf_evsel*,struct cpu_map*,int *) ;
 TYPE_1__ empty_thread_map ;

int perf_evsel__open_per_cpu(struct perf_evsel *evsel,
        struct cpu_map *cpus)
{
 return __perf_evsel__open(evsel, cpus, &empty_thread_map.map);
}
