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
struct btrfs_worker_thread {int idle; TYPE_1__* workers; int /*<<< orphan*/  worker_list; int /*<<< orphan*/  num_pending; } ;
struct TYPE_2__ {int idle_thresh; int /*<<< orphan*/  lock; int /*<<< orphan*/  idle_list; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct btrfs_worker_thread *worker)
{
	if (!worker->idle && FUNC0(&worker->num_pending) <
	    worker->workers->idle_thresh / 2) {
		unsigned long flags;
		FUNC3(&worker->workers->lock, flags);
		worker->idle = 1;

		/* the list may be empty if the worker is just starting */
		if (!FUNC1(&worker->worker_list)) {
			FUNC2(&worker->worker_list,
				 &worker->workers->idle_list);
		}
		FUNC4(&worker->workers->lock, flags);
	}
}