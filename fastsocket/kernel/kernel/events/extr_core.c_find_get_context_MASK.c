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
struct task_struct {int flags; int /*<<< orphan*/  perf_event_mutex; scalar_t__* perf_event_ctxp; } ;
struct pmu {int task_ctx_nr; int /*<<< orphan*/  pmu_cpu_context; } ;
struct perf_event_context {int /*<<< orphan*/  pin_count; int /*<<< orphan*/  lock; } ;
struct perf_cpu_context {struct perf_event_context ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct perf_event_context* FUNC0 (int) ; 
 int ESRCH ; 
 int PF_EXITING ; 
 struct perf_event_context* FUNC1 (struct pmu*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct perf_cpu_context* FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct perf_event_context* FUNC8 (struct task_struct*,int,unsigned long*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct perf_event_context*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static struct perf_event_context *
FUNC15(struct pmu *pmu, struct task_struct *task, int cpu)
{
	struct perf_event_context *ctx;
	struct perf_cpu_context *cpuctx;
	unsigned long flags;
	int ctxn, err;

	if (!task) {
		/* Must be root to operate on a CPU event: */
		if (FUNC9() && !FUNC2(CAP_SYS_ADMIN))
			return FUNC0(-EACCES);

		/*
		 * We could be clever and allow to attach a event to an
		 * offline CPU and activate it when the CPU comes up, but
		 * that's for later.
		 */
		if (!FUNC3(cpu))
			return FUNC0(-ENODEV);

		cpuctx = FUNC7(pmu->pmu_cpu_context, cpu);
		ctx = &cpuctx->ctx;
		FUNC4(ctx);
		++ctx->pin_count;

		return ctx;
	}

	err = -EINVAL;
	ctxn = pmu->task_ctx_nr;
	if (ctxn < 0)
		goto errout;

retry:
	ctx = FUNC8(task, ctxn, &flags);
	if (ctx) {
		FUNC13(ctx);
		++ctx->pin_count;
		FUNC12(&ctx->lock, flags);
	} else {
		ctx = FUNC1(pmu, task);
		err = -ENOMEM;
		if (!ctx)
			goto errout;

		err = 0;
		FUNC5(&task->perf_event_mutex);
		/*
		 * If it has already passed perf_event_exit_task().
		 * we must see PF_EXITING, it takes this mutex too.
		 */
		if (task->flags & PF_EXITING)
			err = -ESRCH;
		else if (task->perf_event_ctxp[ctxn])
			err = -EAGAIN;
		else {
			FUNC4(ctx);
			++ctx->pin_count;
			FUNC11(task->perf_event_ctxp[ctxn], ctx);
		}
		FUNC6(&task->perf_event_mutex);

		if (FUNC14(err)) {
			FUNC10(ctx);

			if (err == -EAGAIN)
				goto retry;
			goto errout;
		}
	}

	return ctx;

errout:
	return FUNC0(err);
}