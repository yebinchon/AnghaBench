
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {struct signal_struct* signal; } ;
struct TYPE_7__ {int function; } ;
struct TYPE_5__ {scalar_t__ tv64; } ;
struct signal_struct {int oom_score_adj_min; int oom_score_adj; int oom_adj; int threadgroup_fork_lock; int pacct; int rlim; scalar_t__ sum_sched_runtime; int ioac; scalar_t__ cmaxrss; scalar_t__ maxrss; scalar_t__ coublock; scalar_t__ cinblock; scalar_t__ oublock; scalar_t__ inblock; scalar_t__ cmaj_flt; scalar_t__ cmin_flt; scalar_t__ maj_flt; scalar_t__ min_flt; scalar_t__ cnivcsw; scalar_t__ cnvcsw; scalar_t__ nivcsw; scalar_t__ nvcsw; void* prev_stime; void* prev_utime; void* cgtime; void* gtime; void* cstime; void* cutime; void* stime; void* utime; int * tty; int * tty_old_pgrp; scalar_t__ leader; TYPE_3__ real_timer; TYPE_1__ it_real_incr; int posix_timers; int shared_pending; struct task_struct* curr_target; scalar_t__ group_stop_count; int * group_exit_task; scalar_t__ group_exit_code; scalar_t__ flags; int wait_chldexit; int live; int count; } ;
struct TYPE_8__ {TYPE_2__* signal; int group_leader; } ;
struct TYPE_6__ {int oom_score_adj_min; int oom_score_adj; int oom_adj; int rlim; } ;


 int CLOCK_MONOTONIC ;
 unsigned long CLONE_THREAD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int INIT_LIST_HEAD (int *) ;
 int acct_init_pacct (int *) ;
 int atomic_set (int *,int) ;
 void* cputime_zero ;
 TYPE_4__* current ;
 int hrtimer_init (TYPE_3__*,int ,int ) ;
 int init_rwsem (int *) ;
 int init_sigpending (int *) ;
 int init_waitqueue_head (int *) ;
 int it_real_fn ;
 struct signal_struct* kmem_cache_alloc (int ,int ) ;
 int memcpy (int ,int ,int) ;
 int posix_cpu_timers_init_group (struct signal_struct*) ;
 int sched_autogroup_fork (struct signal_struct*) ;
 int signal_cachep ;
 int task_io_accounting_init (int *) ;
 int task_lock (int ) ;
 int task_unlock (int ) ;
 int taskstats_tgid_init (struct signal_struct*) ;
 int tty_audit_fork (struct signal_struct*) ;

__attribute__((used)) static int copy_signal(unsigned long clone_flags, struct task_struct *tsk)
{
 struct signal_struct *sig;

 if (clone_flags & CLONE_THREAD)
  return 0;

 sig = kmem_cache_alloc(signal_cachep, GFP_KERNEL);
 tsk->signal = sig;
 if (!sig)
  return -ENOMEM;

 atomic_set(&sig->count, 1);
 atomic_set(&sig->live, 1);
 init_waitqueue_head(&sig->wait_chldexit);
 sig->flags = 0;
 sig->group_exit_code = 0;
 sig->group_exit_task = ((void*)0);
 sig->group_stop_count = 0;
 sig->curr_target = tsk;
 init_sigpending(&sig->shared_pending);
 INIT_LIST_HEAD(&sig->posix_timers);

 hrtimer_init(&sig->real_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 sig->it_real_incr.tv64 = 0;
 sig->real_timer.function = it_real_fn;

 sig->leader = 0;
 sig->tty_old_pgrp = ((void*)0);
 sig->tty = ((void*)0);

 sig->utime = sig->stime = sig->cutime = sig->cstime = cputime_zero;
 sig->gtime = cputime_zero;
 sig->cgtime = cputime_zero;
 sig->prev_utime = sig->prev_stime = cputime_zero;
 sig->nvcsw = sig->nivcsw = sig->cnvcsw = sig->cnivcsw = 0;
 sig->min_flt = sig->maj_flt = sig->cmin_flt = sig->cmaj_flt = 0;
 sig->inblock = sig->oublock = sig->cinblock = sig->coublock = 0;
 sig->maxrss = sig->cmaxrss = 0;
 task_io_accounting_init(&sig->ioac);
 sig->sum_sched_runtime = 0;
 taskstats_tgid_init(sig);

 task_lock(current->group_leader);
 memcpy(sig->rlim, current->signal->rlim, sizeof sig->rlim);
 task_unlock(current->group_leader);

 posix_cpu_timers_init_group(sig);

 acct_init_pacct(&sig->pacct);

 tty_audit_fork(sig);
 sched_autogroup_fork(sig);





 sig->oom_adj = current->signal->oom_adj;
 sig->oom_score_adj = current->signal->oom_score_adj;
 sig->oom_score_adj_min = current->signal->oom_score_adj_min;

 return 0;
}
