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
struct btrfs_worker_thread {int /*<<< orphan*/  lock; TYPE_1__* workers; int /*<<< orphan*/  worker_list; int /*<<< orphan*/  num_pending; int /*<<< orphan*/  pending; int /*<<< orphan*/  prio_pending; int /*<<< orphan*/  working; scalar_t__ idle; } ;
struct TYPE_2__ {int num_workers; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_worker_thread*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct btrfs_worker_thread *worker)
{
	int freeit = 0;

	FUNC5(&worker->lock);
	FUNC4(&worker->workers->lock);
	if (worker->workers->num_workers > 1 &&
	    worker->idle &&
	    !worker->working &&
	    !FUNC2(&worker->worker_list) &&
	    FUNC2(&worker->prio_pending) &&
	    FUNC2(&worker->pending) &&
	    FUNC0(&worker->num_pending) == 0) {
		freeit = 1;
		FUNC1(&worker->worker_list);
		worker->workers->num_workers--;
	}
	FUNC6(&worker->workers->lock);
	FUNC7(&worker->lock);

	if (freeit)
		FUNC3(worker);
	return freeit;
}