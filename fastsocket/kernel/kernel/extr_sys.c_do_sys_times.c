
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tms {void* tms_cstime; void* tms_cutime; void* tms_stime; void* tms_utime; } ;
typedef int cputime_t ;
struct TYPE_7__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_6__ {int siglock; } ;
struct TYPE_5__ {int cstime; int cutime; } ;


 void* cputime_to_clock_t (int ) ;
 TYPE_3__* current ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int thread_group_times (TYPE_3__*,int *,int *) ;

void do_sys_times(struct tms *tms)
{
 cputime_t tgutime, tgstime, cutime, cstime;

 spin_lock_irq(&current->sighand->siglock);
 thread_group_times(current, &tgutime, &tgstime);
 cutime = current->signal->cutime;
 cstime = current->signal->cstime;
 spin_unlock_irq(&current->sighand->siglock);
 tms->tms_utime = cputime_to_clock_t(tgutime);
 tms->tms_stime = cputime_to_clock_t(tgstime);
 tms->tms_cutime = cputime_to_clock_t(cutime);
 tms->tms_cstime = cputime_to_clock_t(cstime);
}
