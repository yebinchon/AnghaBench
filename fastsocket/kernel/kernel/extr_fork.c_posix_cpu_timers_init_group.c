
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int running; } ;
struct TYPE_6__ {void* prof_exp; scalar_t__ sched_exp; void* virt_exp; } ;
struct signal_struct {int * cpu_timers; TYPE_4__ cputimer; TYPE_3__* rlim; TYPE_2__ cputime_expires; TYPE_1__* it; } ;
struct TYPE_7__ {scalar_t__ rlim_cur; } ;
struct TYPE_5__ {void* incr; void* expires; } ;


 size_t CPUCLOCK_PROF ;
 size_t CPUCLOCK_VIRT ;
 int INIT_LIST_HEAD (int *) ;
 size_t RLIMIT_CPU ;
 scalar_t__ RLIM_INFINITY ;
 void* cputime_zero ;
 void* secs_to_cputime (scalar_t__) ;
 int thread_group_cputime_init (struct signal_struct*) ;

__attribute__((used)) static void posix_cpu_timers_init_group(struct signal_struct *sig)
{

 thread_group_cputime_init(sig);


 sig->it[CPUCLOCK_PROF].expires = cputime_zero;
 sig->it[CPUCLOCK_PROF].incr = cputime_zero;
 sig->it[CPUCLOCK_VIRT].expires = cputime_zero;
 sig->it[CPUCLOCK_VIRT].incr = cputime_zero;


 sig->cputime_expires.prof_exp = cputime_zero;
 sig->cputime_expires.virt_exp = cputime_zero;
 sig->cputime_expires.sched_exp = 0;

 if (sig->rlim[RLIMIT_CPU].rlim_cur != RLIM_INFINITY) {
  sig->cputime_expires.prof_exp =
   secs_to_cputime(sig->rlim[RLIMIT_CPU].rlim_cur);
  sig->cputimer.running = 1;
 }


 INIT_LIST_HEAD(&sig->cpu_timers[0]);
 INIT_LIST_HEAD(&sig->cpu_timers[1]);
 INIT_LIST_HEAD(&sig->cpu_timers[2]);
}
