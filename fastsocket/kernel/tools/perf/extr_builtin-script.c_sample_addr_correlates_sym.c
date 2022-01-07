
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {scalar_t__ type; scalar_t__ config; } ;


 scalar_t__ PERF_COUNT_SW_PAGE_FAULTS ;
 scalar_t__ PERF_COUNT_SW_PAGE_FAULTS_MAJ ;
 scalar_t__ PERF_COUNT_SW_PAGE_FAULTS_MIN ;
 scalar_t__ PERF_TYPE_SOFTWARE ;
 scalar_t__ is_bts_event (struct perf_event_attr*) ;

__attribute__((used)) static bool sample_addr_correlates_sym(struct perf_event_attr *attr)
{
 if ((attr->type == PERF_TYPE_SOFTWARE) &&
     ((attr->config == PERF_COUNT_SW_PAGE_FAULTS) ||
      (attr->config == PERF_COUNT_SW_PAGE_FAULTS_MIN) ||
      (attr->config == PERF_COUNT_SW_PAGE_FAULTS_MAJ)))
  return 1;

 if (is_bts_event(attr))
  return 1;

 return 0;
}
