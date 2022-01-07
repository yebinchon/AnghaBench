
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int cputime64_t ;
struct TYPE_3__ {int iowait; } ;
struct TYPE_4__ {TYPE_1__ cpustat; } ;


 unsigned long long get_cpu_iowait_time_us (int,int *) ;
 TYPE_2__ kstat_cpu (int) ;
 int usecs_to_cputime64 (unsigned long long) ;

__attribute__((used)) static cputime64_t get_iowait_time(int cpu)
{
 u64 iowait_time = get_cpu_iowait_time_us(cpu, ((void*)0));
 cputime64_t iowait;

 if (iowait_time == -1ULL)

  iowait = kstat_cpu(cpu).cpustat.iowait;
 else
  iowait = usecs_to_cputime64(iowait_time);

 return iowait;
}
