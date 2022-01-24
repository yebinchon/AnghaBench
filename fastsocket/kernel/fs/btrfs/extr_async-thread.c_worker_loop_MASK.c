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
struct list_head {int dummy; } ;
struct btrfs_worker_thread {scalar_t__ working; int /*<<< orphan*/  lock; int /*<<< orphan*/  prio_pending; int /*<<< orphan*/  pending; int /*<<< orphan*/  workers; int /*<<< orphan*/  num_pending; } ;
struct btrfs_work {int /*<<< orphan*/  (* func ) (struct btrfs_work*) ;struct btrfs_worker_thread* worker; int /*<<< orphan*/  flags; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  WORK_QUEUED_BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_worker_thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_worker_thread*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct btrfs_work* FUNC9 (struct btrfs_worker_thread*,struct list_head*,struct list_head*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct btrfs_work*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfs_work*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 (struct btrfs_worker_thread*) ; 

__attribute__((used)) static int FUNC22(void *arg)
{
	struct btrfs_worker_thread *worker = arg;
	struct list_head head;
	struct list_head prio_head;
	struct btrfs_work *work;

	FUNC0(&head);
	FUNC0(&prio_head);

	do {
again:
		while (1) {


			work = FUNC9(worker, &prio_head, &head);
			if (!work)
				break;

			FUNC11(&work->list);
			FUNC5(WORK_QUEUED_BIT, &work->flags);

			work->worker = worker;

			work->func(work);

			FUNC2(&worker->num_pending);
			/*
			 * unless this is an ordered work queue,
			 * 'work' was probably freed by func above.
			 */
			FUNC13(worker->workers, work);

			FUNC4(worker);
			FUNC6();
		}

		FUNC17(&worker->lock);
		FUNC3(worker);

		if (FUNC8(current)) {
			worker->working = 0;
			FUNC18(&worker->lock);
			FUNC20();
		} else {
			FUNC18(&worker->lock);
			if (!FUNC10()) {
				FUNC7();
				/*
				 * we've dropped the lock, did someone else
				 * jump_in?
				 */
				FUNC16();
				if (!FUNC12(&worker->pending) ||
				    !FUNC12(&worker->prio_pending))
					continue;

				/*
				 * this short schedule allows more work to
				 * come in without the queue functions
				 * needing to go through wake_up_process()
				 *
				 * worker->working is still 1, so nobody
				 * is going to try and wake us up
				 */
				FUNC14(1);
				FUNC16();
				if (!FUNC12(&worker->pending) ||
				    !FUNC12(&worker->prio_pending))
					continue;

				if (FUNC10())
					break;

				/* still no more work?, sleep for real */
				FUNC17(&worker->lock);
				FUNC15(TASK_INTERRUPTIBLE);
				if (!FUNC12(&worker->pending) ||
				    !FUNC12(&worker->prio_pending)) {
					FUNC18(&worker->lock);
					FUNC15(TASK_RUNNING);
					goto again;
				}

				/*
				 * this makes sure we get a wakeup when someone
				 * adds something new to the queue
				 */
				worker->working = 0;
				FUNC18(&worker->lock);

				if (!FUNC10()) {
					FUNC14(HZ * 120);
					if (!worker->working &&
					    FUNC21(worker)) {
						return 0;
					}
				}
			}
			FUNC1(TASK_RUNNING);
		}
	} while (!FUNC10());
	return 0;
}