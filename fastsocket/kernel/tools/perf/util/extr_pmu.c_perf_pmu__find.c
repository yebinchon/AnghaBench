
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu {int dummy; } ;


 struct perf_pmu* pmu_find (char*) ;
 struct perf_pmu* pmu_lookup (char*) ;

struct perf_pmu *perf_pmu__find(char *name)
{
 struct perf_pmu *pmu;






 pmu = pmu_find(name);
 if (pmu)
  return pmu;

 return pmu_lookup(name);
}
