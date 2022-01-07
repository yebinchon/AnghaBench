
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {scalar_t__ type; int config; int sample_period; } ;


 int PERF_COUNT_HW_BRANCH_INSTRUCTIONS ;
 scalar_t__ PERF_TYPE_HARDWARE ;

__attribute__((used)) static bool is_bts_event(struct perf_event_attr *attr)
{
 return ((attr->type == PERF_TYPE_HARDWARE) &&
  (attr->config & PERF_COUNT_HW_BRANCH_INSTRUCTIONS) &&
  (attr->sample_period == 1));
}
