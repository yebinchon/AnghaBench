
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NSEC_PER_USEC ;
 int RUNTIME_INF ;
 scalar_t__ sysctl_sched_rt_runtime ;

__attribute__((used)) static inline u64 global_rt_runtime(void)
{
 if (sysctl_sched_rt_runtime < 0)
  return RUNTIME_INF;

 return (u64)sysctl_sched_rt_runtime * NSEC_PER_USEC;
}
