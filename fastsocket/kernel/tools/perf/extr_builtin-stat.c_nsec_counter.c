
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int dummy; } ;


 int SOFTWARE ;
 int SW_CPU_CLOCK ;
 int SW_TASK_CLOCK ;
 scalar_t__ perf_evsel__match (struct perf_evsel*,int ,int ) ;

__attribute__((used)) static inline int nsec_counter(struct perf_evsel *evsel)
{
 if (perf_evsel__match(evsel, SOFTWARE, SW_CPU_CLOCK) ||
     perf_evsel__match(evsel, SOFTWARE, SW_TASK_CLOCK))
  return 1;

 return 0;
}
