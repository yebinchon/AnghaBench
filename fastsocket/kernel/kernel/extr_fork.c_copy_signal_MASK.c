#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct task_struct {struct signal_struct* signal; } ;
struct TYPE_7__ {int /*<<< orphan*/  function; } ;
struct TYPE_5__ {scalar_t__ tv64; } ;
struct signal_struct {int /*<<< orphan*/  oom_score_adj_min; int /*<<< orphan*/  oom_score_adj; int /*<<< orphan*/  oom_adj; int /*<<< orphan*/  threadgroup_fork_lock; int /*<<< orphan*/  pacct; int /*<<< orphan*/  rlim; scalar_t__ sum_sched_runtime; int /*<<< orphan*/  ioac; scalar_t__ cmaxrss; scalar_t__ maxrss; scalar_t__ coublock; scalar_t__ cinblock; scalar_t__ oublock; scalar_t__ inblock; scalar_t__ cmaj_flt; scalar_t__ cmin_flt; scalar_t__ maj_flt; scalar_t__ min_flt; scalar_t__ cnivcsw; scalar_t__ cnvcsw; scalar_t__ nivcsw; scalar_t__ nvcsw; void* prev_stime; void* prev_utime; void* cgtime; void* gtime; void* cstime; void* cutime; void* stime; void* utime; int /*<<< orphan*/ * tty; int /*<<< orphan*/ * tty_old_pgrp; scalar_t__ leader; TYPE_3__ real_timer; TYPE_1__ it_real_incr; int /*<<< orphan*/  posix_timers; int /*<<< orphan*/  shared_pending; struct task_struct* curr_target; scalar_t__ group_stop_count; int /*<<< orphan*/ * group_exit_task; scalar_t__ group_exit_code; scalar_t__ flags; int /*<<< orphan*/  wait_chldexit; int /*<<< orphan*/  live; int /*<<< orphan*/  count; } ;
struct TYPE_8__ {TYPE_2__* signal; int /*<<< orphan*/  group_leader; } ;
struct TYPE_6__ {int /*<<< orphan*/  oom_score_adj_min; int /*<<< orphan*/  oom_score_adj; int /*<<< orphan*/  oom_adj; int /*<<< orphan*/  rlim; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 unsigned long CLONE_THREAD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* cputime_zero ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  it_real_fn ; 
 struct signal_struct* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct signal_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct signal_struct*) ; 
 int /*<<< orphan*/  signal_cachep ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct signal_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct signal_struct*) ; 

__attribute__((used)) static int FUNC16(unsigned long clone_flags, struct task_struct *tsk)
{
	struct signal_struct *sig;

	if (clone_flags & CLONE_THREAD)
		return 0;

	sig = FUNC7(signal_cachep, GFP_KERNEL);
	tsk->signal = sig;
	if (!sig)
		return -ENOMEM;

	FUNC2(&sig->count, 1);
	FUNC2(&sig->live, 1);
	FUNC6(&sig->wait_chldexit);
	sig->flags = 0;
	sig->group_exit_code = 0;
	sig->group_exit_task = NULL;
	sig->group_stop_count = 0;
	sig->curr_target = tsk;
	FUNC5(&sig->shared_pending);
	FUNC0(&sig->posix_timers);

	FUNC3(&sig->real_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	sig->it_real_incr.tv64 = 0;
	sig->real_timer.function = it_real_fn;

	sig->leader = 0;	/* session leadership doesn't inherit */
	sig->tty_old_pgrp = NULL;
	sig->tty = NULL;

	sig->utime = sig->stime = sig->cutime = sig->cstime = cputime_zero;
	sig->gtime = cputime_zero;
	sig->cgtime = cputime_zero;
	sig->prev_utime = sig->prev_stime = cputime_zero;
	sig->nvcsw = sig->nivcsw = sig->cnvcsw = sig->cnivcsw = 0;
	sig->min_flt = sig->maj_flt = sig->cmin_flt = sig->cmaj_flt = 0;
	sig->inblock = sig->oublock = sig->cinblock = sig->coublock = 0;
	sig->maxrss = sig->cmaxrss = 0;
	FUNC11(&sig->ioac);
	sig->sum_sched_runtime = 0;
	FUNC14(sig);

	FUNC12(current->group_leader);
	FUNC8(sig->rlim, current->signal->rlim, sizeof sig->rlim);
	FUNC13(current->group_leader);

	FUNC9(sig);

	FUNC1(&sig->pacct);

	FUNC15(sig);
	FUNC10(sig);

#ifdef CONFIG_CGROUPS
	init_rwsem(&sig->threadgroup_fork_lock);
#endif

	sig->oom_adj = current->signal->oom_adj;
	sig->oom_score_adj = current->signal->oom_score_adj;
	sig->oom_score_adj_min = current->signal->oom_score_adj_min;

	return 0;
}