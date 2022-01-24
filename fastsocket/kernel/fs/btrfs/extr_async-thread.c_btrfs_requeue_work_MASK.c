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
struct btrfs_worker_thread {int working; int /*<<< orphan*/  lock; int /*<<< orphan*/  task; TYPE_1__* workers; int /*<<< orphan*/  worker_list; scalar_t__ idle; int /*<<< orphan*/  num_pending; int /*<<< orphan*/  pending; int /*<<< orphan*/  prio_pending; } ;
struct btrfs_work {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; struct btrfs_worker_thread* worker; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  worker_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_HIGH_PRIO_BIT ; 
 int /*<<< orphan*/  WORK_QUEUED_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct btrfs_work *work)
{
	struct btrfs_worker_thread *worker = work->worker;
	unsigned long flags;
	int wake = 0;

	if (FUNC7(WORK_QUEUED_BIT, &work->flags))
		return;

	FUNC4(&worker->lock, flags);
	if (FUNC8(WORK_HIGH_PRIO_BIT, &work->flags))
		FUNC1(&work->list, &worker->prio_pending);
	else
		FUNC1(&work->list, &worker->pending);
	FUNC0(&worker->num_pending);

	/* by definition we're busy, take ourselves off the idle
	 * list
	 */
	if (worker->idle) {
		FUNC3(&worker->workers->lock);
		worker->idle = 0;
		FUNC2(&worker->worker_list,
			      &worker->workers->worker_list);
		FUNC5(&worker->workers->lock);
	}
	if (!worker->working) {
		wake = 1;
		worker->working = 1;
	}

	if (wake)
		FUNC9(worker->task);
	FUNC6(&worker->lock, flags);
}