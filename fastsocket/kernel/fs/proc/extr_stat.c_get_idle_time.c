
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int cputime64_t ;
struct TYPE_3__ {int idle; } ;
struct TYPE_4__ {TYPE_1__ cpustat; } ;


 unsigned long long get_cpu_idle_time_us (int,int *) ;
 TYPE_2__ kstat_cpu (int) ;
 int usecs_to_cputime64 (unsigned long long) ;

__attribute__((used)) static cputime64_t get_idle_time(int cpu)
{
 u64 idle_time = get_cpu_idle_time_us(cpu, ((void*)0));
 cputime64_t idle;

 if (idle_time == -1ULL)

  idle = kstat_cpu(cpu).cpustat.idle;
 else
  idle = usecs_to_cputime64(idle_time);

 return idle;
}
