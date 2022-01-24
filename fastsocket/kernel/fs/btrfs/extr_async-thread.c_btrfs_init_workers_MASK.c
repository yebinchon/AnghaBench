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
struct btrfs_workers {int max_workers; int idle_thresh; char* name; struct btrfs_workers* atomic_worker_start; scalar_t__ atomic_start_pending; scalar_t__ ordered; int /*<<< orphan*/  order_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  prio_order_list; int /*<<< orphan*/  order_list; int /*<<< orphan*/  idle_list; int /*<<< orphan*/  worker_list; scalar_t__ num_workers_starting; scalar_t__ num_workers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct btrfs_workers *workers, char *name, int max,
			struct btrfs_workers *async_helper)
{
	workers->num_workers = 0;
	workers->num_workers_starting = 0;
	FUNC0(&workers->worker_list);
	FUNC0(&workers->idle_list);
	FUNC0(&workers->order_list);
	FUNC0(&workers->prio_order_list);
	FUNC1(&workers->lock);
	FUNC1(&workers->order_lock);
	workers->max_workers = max;
	workers->idle_thresh = 32;
	workers->name = name;
	workers->ordered = 0;
	workers->atomic_start_pending = 0;
	workers->atomic_worker_start = async_helper;
}