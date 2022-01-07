
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_target {int dummy; } ;


 int perf_target__has_cpu (struct perf_target*) ;
 int perf_target__has_task (struct perf_target*) ;

__attribute__((used)) static inline bool perf_target__none(struct perf_target *target)
{
 return !perf_target__has_task(target) && !perf_target__has_cpu(target);
}
