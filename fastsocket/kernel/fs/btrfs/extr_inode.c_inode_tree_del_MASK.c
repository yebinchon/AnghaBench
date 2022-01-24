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
struct btrfs_root {int /*<<< orphan*/  inode_lock; int /*<<< orphan*/  inode_tree; TYPE_1__* fs_info; int /*<<< orphan*/  root_item; } ;
struct TYPE_4__ {int /*<<< orphan*/  rb_node; struct btrfs_root* root; } ;
struct TYPE_3__ {int /*<<< orphan*/  subvol_srcu; struct btrfs_root* tree_root; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct inode *inode)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	int empty = 0;

	FUNC7(&root->inode_lock);
	if (!FUNC2(&FUNC0(inode)->rb_node)) {
		FUNC6(&FUNC0(inode)->rb_node, &root->inode_tree);
		FUNC1(&FUNC0(inode)->rb_node);
		empty = FUNC3(&root->inode_tree);
	}
	FUNC8(&root->inode_lock);

	/*
	 * Free space cache has inodes in the tree root, but the tree root has a
	 * root_refs of 0, so this could end up dropping the tree root as a
	 * snapshot, so we need the extra !root->fs_info->tree_root check to
	 * make sure we don't drop it.
	 */
	if (empty && FUNC5(&root->root_item) == 0 &&
	    root != root->fs_info->tree_root) {
		FUNC9(&root->fs_info->subvol_srcu);
		FUNC7(&root->inode_lock);
		empty = FUNC3(&root->inode_tree);
		FUNC8(&root->inode_lock);
		if (empty)
			FUNC4(root);
	}
}