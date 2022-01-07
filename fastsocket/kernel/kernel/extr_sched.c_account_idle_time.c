
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq {int nr_iowait; } ;
struct cpu_usage_stat {void* idle; void* iowait; } ;
typedef int cputime_t ;
typedef int cputime64_t ;
struct TYPE_2__ {struct cpu_usage_stat cpustat; } ;


 scalar_t__ atomic_read (int *) ;
 void* cputime64_add (void*,int ) ;
 int cputime_to_cputime64 (int ) ;
 TYPE_1__ kstat_this_cpu ;
 struct rq* this_rq () ;

void account_idle_time(cputime_t cputime)
{
 struct cpu_usage_stat *cpustat = &kstat_this_cpu.cpustat;
 cputime64_t cputime64 = cputime_to_cputime64(cputime);
 struct rq *rq = this_rq();

 if (atomic_read(&rq->nr_iowait) > 0)
  cpustat->iowait = cputime64_add(cpustat->iowait, cputime64);
 else
  cpustat->idle = cputime64_add(cpustat->idle, cputime64);
}
