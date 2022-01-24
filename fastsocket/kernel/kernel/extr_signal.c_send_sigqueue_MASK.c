#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sigpending {int /*<<< orphan*/  signal; int /*<<< orphan*/  list; } ;
struct task_struct {struct sigpending pending; TYPE_1__* signal; } ;
struct TYPE_4__ {int si_signo; scalar_t__ si_code; scalar_t__ si_overrun; } ;
struct sigqueue {int flags; TYPE_2__ info; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {struct sigpending shared_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SIGQUEUE_PREALLOC ; 
 scalar_t__ SI_TIMER ; 
 int TRACE_SIGNAL_ALREADY_PENDING ; 
 int TRACE_SIGNAL_DELIVERED ; 
 int TRACE_SIGNAL_IGNORED ; 
 int /*<<< orphan*/  FUNC1 (int,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,TYPE_2__*,struct task_struct*,int,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,unsigned long*) ; 

int FUNC12(struct sigqueue *q, struct task_struct *t, int group)
{
	int sig = q->info.si_signo;
	struct sigpending *pending;
	unsigned long flags;
	int ret, result;

	FUNC0(!(q->flags & SIGQUEUE_PREALLOC));

	ret = -1;
	if (!FUNC2(FUNC5(t, &flags)))
		goto ret;

	ret = 1; /* the signal is ignored */
	result = TRACE_SIGNAL_IGNORED;
	if (!FUNC6(sig, t, 0))
		goto out;

	ret = 0;
	if (FUNC10(!FUNC4(&q->list))) {
		/*
		 * If an SI_TIMER entry is already queue just increment
		 * the overrun count.
		 */
		FUNC0(q->info.si_code != SI_TIMER);
		q->info.si_overrun++;
		result = TRACE_SIGNAL_ALREADY_PENDING;
		goto out;
	}
	q->info.si_overrun = 0;

	FUNC8(t, sig);
	pending = group ? &t->signal->shared_pending : &t->pending;
	FUNC3(&q->list, &pending->list);
	FUNC7(&pending->signal, sig);
	FUNC1(sig, t, group);
	result = TRACE_SIGNAL_DELIVERED;
out:
	FUNC9(sig, &q->info, t, group, result);
	FUNC11(t, &flags);
ret:
	return ret;
}