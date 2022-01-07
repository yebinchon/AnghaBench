
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct perf_evsel {TYPE_2__* counts; } ;
struct TYPE_4__ {TYPE_1__* cpu; } ;
struct TYPE_3__ {int * values; } ;


 scalar_t__ __perf_evsel__read_on_cpu (struct perf_evsel*,int,int ,int ) ;
 int perf_evsel__nr_cpus (struct perf_evsel*) ;
 int scale ;
 int update_shadow_stats (struct perf_evsel*,int *) ;

__attribute__((used)) static int read_counter(struct perf_evsel *counter)
{
 u64 *count;
 int cpu;

 for (cpu = 0; cpu < perf_evsel__nr_cpus(counter); cpu++) {
  if (__perf_evsel__read_on_cpu(counter, cpu, 0, scale) < 0)
   return -1;

  count = counter->counts->cpu[cpu].values;

  update_shadow_stats(counter, count);
 }

 return 0;
}
