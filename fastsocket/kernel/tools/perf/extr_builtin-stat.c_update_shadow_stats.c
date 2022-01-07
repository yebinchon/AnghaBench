
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_evsel {int dummy; } ;


 int HARDWARE ;
 int HW_BRANCH_INSTRUCTIONS ;
 int HW_CACHE ;
 int HW_CACHE_DTLB ;
 int HW_CACHE_ITLB ;
 int HW_CACHE_L1D ;
 int HW_CACHE_L1I ;
 int HW_CACHE_LL ;
 int HW_CACHE_REFERENCES ;
 int HW_CPU_CYCLES ;
 int HW_STALLED_CYCLES_BACKEND ;
 int HW_STALLED_CYCLES_FRONTEND ;
 int SOFTWARE ;
 int SW_TASK_CLOCK ;
 scalar_t__ perf_evsel__match (struct perf_evsel*,int ,int ) ;
 int * runtime_branches_stats ;
 int * runtime_cacherefs_stats ;
 int * runtime_cycles_stats ;
 int * runtime_dtlb_cache_stats ;
 int * runtime_itlb_cache_stats ;
 int * runtime_l1_dcache_stats ;
 int * runtime_l1_icache_stats ;
 int * runtime_ll_cache_stats ;
 int * runtime_nsecs_stats ;
 int * runtime_stalled_cycles_back_stats ;
 int * runtime_stalled_cycles_front_stats ;
 int update_stats (int *,int ) ;

__attribute__((used)) static void update_shadow_stats(struct perf_evsel *counter, u64 *count)
{
 if (perf_evsel__match(counter, SOFTWARE, SW_TASK_CLOCK))
  update_stats(&runtime_nsecs_stats[0], count[0]);
 else if (perf_evsel__match(counter, HARDWARE, HW_CPU_CYCLES))
  update_stats(&runtime_cycles_stats[0], count[0]);
 else if (perf_evsel__match(counter, HARDWARE, HW_STALLED_CYCLES_FRONTEND))
  update_stats(&runtime_stalled_cycles_front_stats[0], count[0]);
 else if (perf_evsel__match(counter, HARDWARE, HW_STALLED_CYCLES_BACKEND))
  update_stats(&runtime_stalled_cycles_back_stats[0], count[0]);
 else if (perf_evsel__match(counter, HARDWARE, HW_BRANCH_INSTRUCTIONS))
  update_stats(&runtime_branches_stats[0], count[0]);
 else if (perf_evsel__match(counter, HARDWARE, HW_CACHE_REFERENCES))
  update_stats(&runtime_cacherefs_stats[0], count[0]);
 else if (perf_evsel__match(counter, HW_CACHE, HW_CACHE_L1D))
  update_stats(&runtime_l1_dcache_stats[0], count[0]);
 else if (perf_evsel__match(counter, HW_CACHE, HW_CACHE_L1I))
  update_stats(&runtime_l1_icache_stats[0], count[0]);
 else if (perf_evsel__match(counter, HW_CACHE, HW_CACHE_LL))
  update_stats(&runtime_ll_cache_stats[0], count[0]);
 else if (perf_evsel__match(counter, HW_CACHE, HW_CACHE_DTLB))
  update_stats(&runtime_dtlb_cache_stats[0], count[0]);
 else if (perf_evsel__match(counter, HW_CACHE, HW_CACHE_ITLB))
  update_stats(&runtime_itlb_cache_stats[0], count[0]);
}
