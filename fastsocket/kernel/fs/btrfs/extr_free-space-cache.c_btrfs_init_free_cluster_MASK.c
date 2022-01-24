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
struct btrfs_free_cluster {int /*<<< orphan*/ * block_group; int /*<<< orphan*/  block_group_list; scalar_t__ max_size; int /*<<< orphan*/  root; int /*<<< orphan*/  refill_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct btrfs_free_cluster *cluster)
{
	FUNC1(&cluster->lock);
	FUNC1(&cluster->refill_lock);
	cluster->root = RB_ROOT;
	cluster->max_size = 0;
	FUNC0(&cluster->block_group_list);
	cluster->block_group = NULL;
}