
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int flags; void* stimescaled; void* stime; } ;
struct cpu_usage_stat {void* system; void* softirq; void* irq; } ;
typedef int cputime_t ;
typedef int cputime64_t ;
struct TYPE_2__ {struct cpu_usage_stat cpustat; } ;


 int CPUACCT_STAT_SYSTEM ;
 int PF_VCPU ;
 int account_group_system_time (struct task_struct*,int ) ;
 int account_guest_time (struct task_struct*,int ,int ) ;
 int acct_update_integrals (struct task_struct*) ;
 int cpuacct_update_stats (struct task_struct*,int ,int ) ;
 void* cputime64_add (void*,int ) ;
 void* cputime_add (void*,int ) ;
 int cputime_to_cputime64 (int ) ;
 int hardirq_count () ;
 scalar_t__ in_serving_softirq () ;
 int irq_count () ;
 TYPE_1__ kstat_this_cpu ;

void account_system_time(struct task_struct *p, int hardirq_offset,
    cputime_t cputime, cputime_t cputime_scaled)
{
 struct cpu_usage_stat *cpustat = &kstat_this_cpu.cpustat;
 cputime64_t tmp;

 if ((p->flags & PF_VCPU) && (irq_count() - hardirq_offset == 0)) {
  account_guest_time(p, cputime, cputime_scaled);
  return;
 }


 p->stime = cputime_add(p->stime, cputime);
 p->stimescaled = cputime_add(p->stimescaled, cputime_scaled);
 account_group_system_time(p, cputime);


 tmp = cputime_to_cputime64(cputime);
 if (hardirq_count() - hardirq_offset)
  cpustat->irq = cputime64_add(cpustat->irq, tmp);
 else if (in_serving_softirq())
  cpustat->softirq = cputime64_add(cpustat->softirq, tmp);
 else
  cpustat->system = cputime64_add(cpustat->system, tmp);

 cpuacct_update_stats(p, CPUACCT_STAT_SYSTEM, cputime);


 acct_update_integrals(p);
}
