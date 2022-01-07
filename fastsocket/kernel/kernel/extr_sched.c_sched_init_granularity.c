
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int update_sysctl () ;

__attribute__((used)) static inline void sched_init_granularity(void)
{
 update_sysctl();
}
