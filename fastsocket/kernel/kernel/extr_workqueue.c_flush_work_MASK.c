#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wq_barrier {int /*<<< orphan*/  done; } ;
struct list_head {int /*<<< orphan*/  next; } ;
struct work_struct {struct list_head entry; } ;
struct cpu_workqueue_struct {int /*<<< orphan*/  lock; struct list_head worklist; struct work_struct* current_work; TYPE_1__* wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  lockdep_map; } ;

/* Variables and functions */
 struct cpu_workqueue_struct* FUNC0 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_workqueue_struct*,struct wq_barrier*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct work_struct *work)
{
	struct cpu_workqueue_struct *cwq;
	struct list_head *prev;
	struct wq_barrier barr;

	FUNC5();
	cwq = FUNC0(work);
	if (!cwq)
		return 0;

	FUNC3(&cwq->wq->lockdep_map);
	FUNC4(&cwq->wq->lockdep_map);

	prev = NULL;
	FUNC7(&cwq->lock);
	if (!FUNC2(&work->entry)) {
		/*
		 * See the comment near try_to_grab_pending()->smp_rmb().
		 * If it was re-queued under us we are not going to wait.
		 */
		FUNC6();
		if (FUNC9(cwq != FUNC0(work)))
			goto out;
		prev = &work->entry;
	} else {
		if (cwq->current_work != work)
			goto out;
		prev = &cwq->worklist;
	}
	FUNC1(cwq, &barr, prev->next);
out:
	FUNC8(&cwq->lock);
	if (!prev)
		return 0;

	FUNC10(&barr.done);
	return 1;
}