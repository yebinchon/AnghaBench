#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct task_struct {int /*<<< orphan*/ * perf_event_ctxp; } ;
struct perf_event_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct perf_event_context* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct perf_event_context *
FUNC6(struct task_struct *task, int ctxn, unsigned long *flags)
{
	struct perf_event_context *ctx;

	FUNC2();
retry:
	ctx = FUNC1(task->perf_event_ctxp[ctxn]);
	if (ctx) {
		/*
		 * If this context is a clone of another, it might
		 * get swapped for another underneath us by
		 * perf_event_task_sched_out, though the
		 * rcu_read_lock() protects us from any context
		 * getting freed.  Lock the context and check if it
		 * got swapped before we could get the lock, and retry
		 * if so.  If we locked the right context, then it
		 * can't get swapped on us any more.
		 */
		FUNC4(&ctx->lock, *flags);
		if (ctx != FUNC1(task->perf_event_ctxp[ctxn])) {
			FUNC5(&ctx->lock, *flags);
			goto retry;
		}

		if (!FUNC0(&ctx->refcount)) {
			FUNC5(&ctx->lock, *flags);
			ctx = NULL;
		}
	}
	FUNC3();
	return ctx;
}