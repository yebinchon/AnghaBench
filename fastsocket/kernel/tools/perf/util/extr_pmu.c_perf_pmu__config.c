
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu {int format; int type; } ;
struct perf_event_attr {int type; } ;
struct list_head {int dummy; } ;


 int perf_pmu__config_terms (int *,struct perf_event_attr*,struct list_head*) ;

int perf_pmu__config(struct perf_pmu *pmu, struct perf_event_attr *attr,
       struct list_head *head_terms)
{
 attr->type = pmu->type;
 return perf_pmu__config_terms(&pmu->format, attr, head_terms);
}
