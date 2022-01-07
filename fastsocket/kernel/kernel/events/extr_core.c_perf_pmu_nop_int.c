
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;



__attribute__((used)) static int perf_pmu_nop_int(struct pmu *pmu)
{
 return 0;
}
