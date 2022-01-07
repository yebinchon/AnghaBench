
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_evsel {struct cpu_map* cpus; } ;
struct cpu_map {int dummy; } ;
struct TYPE_4__ {struct cpu_map* cpus; } ;
struct TYPE_3__ {int cpu_list; } ;


 TYPE_2__* evsel_list ;
 TYPE_1__ target ;

__attribute__((used)) static inline struct cpu_map *perf_evsel__cpus(struct perf_evsel *evsel)
{
 return (evsel->cpus && !target.cpu_list) ? evsel->cpus : evsel_list->cpus;
}
