
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 int perf_pmu_disable (struct pmu*) ;

__attribute__((used)) static void perf_pmu_start_txn(struct pmu *pmu)
{
 perf_pmu_disable(pmu);
}
