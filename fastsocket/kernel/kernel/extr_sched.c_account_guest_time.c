
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {void* gtime; void* utimescaled; void* utime; } ;
struct cpu_usage_stat {void* guest; void* user; } ;
typedef int cputime_t ;
typedef int cputime64_t ;
struct TYPE_2__ {struct cpu_usage_stat cpustat; } ;


 int account_group_user_time (struct task_struct*,int ) ;
 void* cputime64_add (void*,int ) ;
 void* cputime_add (void*,int ) ;
 int cputime_to_cputime64 (int ) ;
 TYPE_1__ kstat_this_cpu ;

__attribute__((used)) static void account_guest_time(struct task_struct *p, cputime_t cputime,
          cputime_t cputime_scaled)
{
 cputime64_t tmp;
 struct cpu_usage_stat *cpustat = &kstat_this_cpu.cpustat;

 tmp = cputime_to_cputime64(cputime);


 p->utime = cputime_add(p->utime, cputime);
 p->utimescaled = cputime_add(p->utimescaled, cputime_scaled);
 account_group_user_time(p, cputime);
 p->gtime = cputime_add(p->gtime, cputime);


 cpustat->user = cputime64_add(cpustat->user, tmp);
 cpustat->guest = cputime64_add(cpustat->guest, tmp);
}
