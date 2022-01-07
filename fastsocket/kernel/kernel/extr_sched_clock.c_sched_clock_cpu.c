
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int sched_clock () ;
 int sched_clock_running ;
 scalar_t__ unlikely (int) ;

u64 sched_clock_cpu(int cpu)
{
 if (unlikely(!sched_clock_running))
  return 0;

 return sched_clock();
}
