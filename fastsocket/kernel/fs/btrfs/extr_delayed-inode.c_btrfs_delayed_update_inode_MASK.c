#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct btrfs_delayed_node {int inode_dirty; int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; int /*<<< orphan*/  inode_item; } ;
struct TYPE_4__ {TYPE_1__* delayed_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  items; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_delayed_node*) ; 
 int FUNC1 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct btrfs_delayed_node*) ; 
 struct btrfs_delayed_node* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_trans_handle*,int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct btrfs_trans_handle *trans,
			       struct btrfs_root *root, struct inode *inode)
{
	struct btrfs_delayed_node *delayed_node;
	int ret = 0;

	delayed_node = FUNC4(inode);
	if (FUNC0(delayed_node))
		return FUNC1(delayed_node);

	FUNC7(&delayed_node->mutex);
	if (delayed_node->inode_dirty) {
		FUNC6(trans, &delayed_node->inode_item, inode);
		goto release_node;
	}

	ret = FUNC3(trans, root, inode,
						   delayed_node);
	if (ret)
		goto release_node;

	FUNC6(trans, &delayed_node->inode_item, inode);
	delayed_node->inode_dirty = 1;
	delayed_node->count++;
	FUNC2(&root->fs_info->delayed_root->items);
release_node:
	FUNC8(&delayed_node->mutex);
	FUNC5(delayed_node);
	return ret;
}