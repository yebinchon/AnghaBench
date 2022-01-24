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
struct btrfs_workers {scalar_t__ num_workers_starting; int /*<<< orphan*/  lock; scalar_t__ num_workers; int /*<<< orphan*/  idle_list; int /*<<< orphan*/  name; } ;
struct btrfs_worker_thread {int idle; int /*<<< orphan*/  worker_list; int /*<<< orphan*/  task; struct btrfs_workers* workers; int /*<<< orphan*/  refs; int /*<<< orphan*/  num_pending; int /*<<< orphan*/  lock; int /*<<< orphan*/  prio_pending; int /*<<< orphan*/  pending; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_worker_thread*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct btrfs_worker_thread*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct btrfs_worker_thread* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  worker_loop ; 

__attribute__((used)) static int FUNC12(struct btrfs_workers *workers)
{
	struct btrfs_worker_thread *worker;
	int ret = 0;

	worker = FUNC7(sizeof(*worker), GFP_NOFS);
	if (!worker) {
		ret = -ENOMEM;
		goto fail;
	}

	FUNC0(&worker->pending);
	FUNC0(&worker->prio_pending);
	FUNC0(&worker->worker_list);
	FUNC9(&worker->lock);

	FUNC4(&worker->num_pending, 0);
	FUNC4(&worker->refs, 1);
	worker->workers = workers;
	worker->task = FUNC6(worker_loop, worker,
				   "btrfs-%s-%d", workers->name,
				   workers->num_workers + 1);
	if (FUNC1(worker->task)) {
		ret = FUNC2(worker->task);
		FUNC5(worker);
		goto fail;
	}
	FUNC10(&workers->lock);
	FUNC8(&worker->worker_list, &workers->idle_list);
	worker->idle = 1;
	workers->num_workers++;
	workers->num_workers_starting--;
	FUNC3(workers->num_workers_starting < 0);
	FUNC11(&workers->lock);

	return 0;
fail:
	FUNC10(&workers->lock);
	workers->num_workers_starting--;
	FUNC11(&workers->lock);
	return ret;
}