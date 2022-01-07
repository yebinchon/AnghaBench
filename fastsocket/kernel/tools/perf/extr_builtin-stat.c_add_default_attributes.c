
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct perf_event_attr {int config; int type; } ;
struct TYPE_3__ {int nr_entries; } ;


 int PERF_COUNT_HW_BRANCH_INSTRUCTIONS ;
 int PERF_COUNT_HW_BRANCH_MISSES ;
 int PERF_COUNT_HW_CACHE_DTLB ;
 int PERF_COUNT_HW_CACHE_ITLB ;
 int PERF_COUNT_HW_CACHE_L1D ;
 int PERF_COUNT_HW_CACHE_L1I ;
 int PERF_COUNT_HW_CACHE_LL ;
 int PERF_COUNT_HW_CACHE_OP_PREFETCH ;
 int PERF_COUNT_HW_CACHE_OP_READ ;
 int PERF_COUNT_HW_CACHE_RESULT_ACCESS ;
 int PERF_COUNT_HW_CACHE_RESULT_MISS ;
 int PERF_COUNT_HW_CPU_CYCLES ;
 int PERF_COUNT_HW_INSTRUCTIONS ;
 int PERF_COUNT_HW_STALLED_CYCLES_BACKEND ;
 int PERF_COUNT_HW_STALLED_CYCLES_FRONTEND ;
 int PERF_COUNT_SW_CONTEXT_SWITCHES ;
 int PERF_COUNT_SW_CPU_MIGRATIONS ;
 int PERF_COUNT_SW_PAGE_FAULTS ;
 int PERF_COUNT_SW_TASK_CLOCK ;
 int PERF_TYPE_HARDWARE ;
 int PERF_TYPE_HW_CACHE ;
 int PERF_TYPE_SOFTWARE ;
 int detailed_run ;
 TYPE_1__* evsel_list ;
 scalar_t__ null_run ;
 int perf_evlist__add_default_attrs (TYPE_1__*,struct perf_event_attr*) ;

__attribute__((used)) static int add_default_attributes(void)
{
 struct perf_event_attr default_attrs[] = {

  { .type = PERF_TYPE_SOFTWARE, .config = PERF_COUNT_SW_TASK_CLOCK },
  { .type = PERF_TYPE_SOFTWARE, .config = PERF_COUNT_SW_CONTEXT_SWITCHES },
  { .type = PERF_TYPE_SOFTWARE, .config = PERF_COUNT_SW_CPU_MIGRATIONS },
  { .type = PERF_TYPE_SOFTWARE, .config = PERF_COUNT_SW_PAGE_FAULTS },

  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_CPU_CYCLES },
  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_STALLED_CYCLES_FRONTEND },
  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_STALLED_CYCLES_BACKEND },
  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_INSTRUCTIONS },
  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_BRANCH_INSTRUCTIONS },
  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_BRANCH_MISSES },

};




 struct perf_event_attr detailed_attrs[] = {

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1D << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1D << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_LL << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_LL << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },
};




 struct perf_event_attr very_detailed_attrs[] = {

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1I << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1I << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_DTLB << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_DTLB << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_ITLB << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_ITLB << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },

};




 struct perf_event_attr very_very_detailed_attrs[] = {

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1D << 0 |
 (PERF_COUNT_HW_CACHE_OP_PREFETCH << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1D << 0 |
 (PERF_COUNT_HW_CACHE_OP_PREFETCH << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },
};


 if (null_run)
  return 0;

 if (!evsel_list->nr_entries) {
  if (perf_evlist__add_default_attrs(evsel_list, default_attrs) < 0)
   return -1;
 }



 if (detailed_run < 1)
  return 0;


 if (perf_evlist__add_default_attrs(evsel_list, detailed_attrs) < 0)
  return -1;

 if (detailed_run < 2)
  return 0;


 if (perf_evlist__add_default_attrs(evsel_list, very_detailed_attrs) < 0)
  return -1;

 if (detailed_run < 3)
  return 0;


 return perf_evlist__add_default_attrs(evsel_list, very_very_detailed_attrs);
}
