
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_usage_stat {int steal; } ;
typedef int cputime_t ;
typedef int cputime64_t ;
struct TYPE_2__ {struct cpu_usage_stat cpustat; } ;


 int cputime64_add (int ,int ) ;
 int cputime_to_cputime64 (int ) ;
 TYPE_1__ kstat_this_cpu ;

void account_steal_time(cputime_t cputime)
{
 struct cpu_usage_stat *cpustat = &kstat_this_cpu.cpustat;
 cputime64_t cputime64 = cputime_to_cputime64(cputime);

 cpustat->steal = cputime64_add(cpustat->steal, cputime64);
}
