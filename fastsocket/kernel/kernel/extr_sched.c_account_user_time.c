
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {void* utimescaled; void* utime; } ;
struct cpu_usage_stat {void* user; void* nice; } ;
typedef int cputime_t ;
typedef int cputime64_t ;
struct TYPE_2__ {struct cpu_usage_stat cpustat; } ;


 int CPUACCT_STAT_USER ;
 scalar_t__ TASK_NICE (struct task_struct*) ;
 int account_group_user_time (struct task_struct*,int ) ;
 int acct_update_integrals (struct task_struct*) ;
 int cpuacct_update_stats (struct task_struct*,int ,int ) ;
 void* cputime64_add (void*,int ) ;
 void* cputime_add (void*,int ) ;
 int cputime_to_cputime64 (int ) ;
 TYPE_1__ kstat_this_cpu ;

void account_user_time(struct task_struct *p, cputime_t cputime,
         cputime_t cputime_scaled)
{
 struct cpu_usage_stat *cpustat = &kstat_this_cpu.cpustat;
 cputime64_t tmp;


 p->utime = cputime_add(p->utime, cputime);
 p->utimescaled = cputime_add(p->utimescaled, cputime_scaled);
 account_group_user_time(p, cputime);


 tmp = cputime_to_cputime64(cputime);
 if (TASK_NICE(p) > 0)
  cpustat->nice = cputime64_add(cpustat->nice, tmp);
 else
  cpustat->user = cputime64_add(cpustat->user, tmp);

 cpuacct_update_stats(p, CPUACCT_STAT_USER, cputime);

 acct_update_integrals(p);
}
