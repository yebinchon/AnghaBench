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
struct inode {int dummy; } ;
struct btrfs_delayed_node {int /*<<< orphan*/  refs; int /*<<< orphan*/  mutex; } ;
struct btrfs_delayed_item {int /*<<< orphan*/  readdir_list; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 struct btrfs_delayed_item* FUNC0 (struct btrfs_delayed_node*) ; 
 struct btrfs_delayed_item* FUNC1 (struct btrfs_delayed_node*) ; 
 struct btrfs_delayed_item* FUNC2 (struct btrfs_delayed_item*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct btrfs_delayed_node* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct inode *inode, struct list_head *ins_list,
			     struct list_head *del_list)
{
	struct btrfs_delayed_node *delayed_node;
	struct btrfs_delayed_item *item;

	delayed_node = FUNC5(inode);
	if (!delayed_node)
		return;

	FUNC7(&delayed_node->mutex);
	item = FUNC1(delayed_node);
	while (item) {
		FUNC4(&item->refs);
		FUNC6(&item->readdir_list, ins_list);
		item = FUNC2(item);
	}

	item = FUNC0(delayed_node);
	while (item) {
		FUNC4(&item->refs);
		FUNC6(&item->readdir_list, del_list);
		item = FUNC2(item);
	}
	FUNC8(&delayed_node->mutex);
	/*
	 * This delayed node is still cached in the btrfs inode, so refs
	 * must be > 1 now, and we needn't check it is going to be freed
	 * or not.
	 *
	 * Besides that, this function is used to read dir, we do not
	 * insert/delete delayed items in this period. So we also needn't
	 * requeue or dequeue this delayed node.
	 */
	FUNC3(&delayed_node->refs);
}