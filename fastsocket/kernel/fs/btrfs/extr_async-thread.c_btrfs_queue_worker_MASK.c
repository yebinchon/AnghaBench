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
struct btrfs_workers {int /*<<< orphan*/  order_lock; int /*<<< orphan*/  order_list; int /*<<< orphan*/  prio_order_list; scalar_t__ ordered; } ;
struct btrfs_worker_thread {int working; int /*<<< orphan*/  lock; int /*<<< orphan*/  task; int /*<<< orphan*/  pending; int /*<<< orphan*/  prio_pending; } ;
struct btrfs_work {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; int /*<<< orphan*/  order_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WORK_HIGH_PRIO_BIT ; 
 int /*<<< orphan*/  WORK_QUEUED_BIT ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_worker_thread*) ; 
 struct btrfs_worker_thread* FUNC2 (struct btrfs_workers*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct btrfs_workers *workers, struct btrfs_work *work)
{
	struct btrfs_worker_thread *worker;
	unsigned long flags;
	int wake = 0;

	/* don't requeue something already on a list */
	if (FUNC8(WORK_QUEUED_BIT, &work->flags))
		return;

	worker = FUNC2(workers);
	if (workers->ordered) {
		/*
		 * you're not allowed to do ordered queues from an
		 * interrupt handler
		 */
		FUNC4(&workers->order_lock);
		if (FUNC9(WORK_HIGH_PRIO_BIT, &work->flags)) {
			FUNC3(&work->order_list,
				      &workers->prio_order_list);
		} else {
			FUNC3(&work->order_list, &workers->order_list);
		}
		FUNC6(&workers->order_lock);
	} else {
		FUNC0(&work->order_list);
	}

	FUNC5(&worker->lock, flags);

	if (FUNC9(WORK_HIGH_PRIO_BIT, &work->flags))
		FUNC3(&work->list, &worker->prio_pending);
	else
		FUNC3(&work->list, &worker->pending);
	FUNC1(worker);

	/*
	 * avoid calling into wake_up_process if this thread has already
	 * been kicked
	 */
	if (!worker->working)
		wake = 1;
	worker->working = 1;

	if (wake)
		FUNC10(worker->task);
	FUNC7(&worker->lock, flags);
}