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
struct TYPE_2__ {int /*<<< orphan*/  func; } ;
struct worker_start {TYPE_1__ work; struct btrfs_workers* queue; } ;
struct btrfs_workers {scalar_t__ num_workers; scalar_t__ num_workers_starting; scalar_t__ max_workers; int /*<<< orphan*/  lock; int /*<<< orphan*/  atomic_worker_start; scalar_t__ atomic_start_pending; } ;
struct btrfs_worker_thread {struct btrfs_workers* workers; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct worker_start*) ; 
 struct worker_start* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  start_new_worker_func ; 

__attribute__((used)) static void FUNC6(struct btrfs_worker_thread *worker)
{
	struct btrfs_workers *workers = worker->workers;
	struct worker_start *start;
	unsigned long flags;

	FUNC3();
	if (!workers->atomic_start_pending)
		return;

	start = FUNC2(sizeof(*start), GFP_NOFS);
	if (!start)
		return;

	start->work.func = start_new_worker_func;
	start->queue = workers;

	FUNC4(&workers->lock, flags);
	if (!workers->atomic_start_pending)
		goto out;

	workers->atomic_start_pending = 0;
	if (workers->num_workers + workers->num_workers_starting >=
	    workers->max_workers)
		goto out;

	workers->num_workers_starting += 1;
	FUNC5(&workers->lock, flags);
	FUNC0(workers->atomic_worker_start, &start->work);
	return;

out:
	FUNC1(start);
	FUNC5(&workers->lock, flags);
}