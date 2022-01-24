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
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; int /*<<< orphan*/  root_item; int /*<<< orphan*/  root_key; TYPE_2__* node; } ;
struct TYPE_4__ {scalar_t__ start; } ;
struct TYPE_3__ {struct btrfs_root* extent_root; struct btrfs_root* tree_root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root*) ; 

__attribute__((used)) static int FUNC6(struct btrfs_trans_handle *trans,
			       struct btrfs_root *root)
{
	int ret;
	u64 old_root_bytenr;
	u64 old_root_used;
	struct btrfs_root *tree_root = root->fs_info->tree_root;

	old_root_used = FUNC1(&root->root_item);
	FUNC4(trans, root);

	while (1) {
		old_root_bytenr = FUNC0(&root->root_item);
		if (old_root_bytenr == root->node->start &&
		    old_root_used == FUNC1(&root->root_item))
			break;

		FUNC2(&root->root_item, root->node);
		ret = FUNC3(trans, tree_root,
					&root->root_key,
					&root->root_item);
		if (ret)
			return ret;

		old_root_used = FUNC1(&root->root_item);
		ret = FUNC4(trans, root);
		if (ret)
			return ret;
	}

	if (root != root->fs_info->extent_root)
		FUNC5(root);

	return 0;
}