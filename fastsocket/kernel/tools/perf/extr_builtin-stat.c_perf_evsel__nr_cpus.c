
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_evsel {int dummy; } ;
struct TYPE_2__ {int nr; } ;


 TYPE_1__* perf_evsel__cpus (struct perf_evsel*) ;

__attribute__((used)) static inline int perf_evsel__nr_cpus(struct perf_evsel *evsel)
{
 return perf_evsel__cpus(evsel)->nr;
}
