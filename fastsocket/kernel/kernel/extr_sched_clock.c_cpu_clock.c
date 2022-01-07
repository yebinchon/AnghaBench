
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int sched_clock_cpu (int) ;

u64 cpu_clock(int cpu)
{
 return sched_clock_cpu(cpu);
}
