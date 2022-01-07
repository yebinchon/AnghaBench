
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_target {scalar_t__ cpu_list; scalar_t__ system_wide; } ;



__attribute__((used)) static inline bool perf_target__has_cpu(struct perf_target *target)
{
 return target->system_wide || target->cpu_list;
}
