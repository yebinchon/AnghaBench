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
struct rb_node {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_ordered_inode_tree {int /*<<< orphan*/  tree; int /*<<< orphan*/  lock; int /*<<< orphan*/ * last; } ;
struct btrfs_ordered_extent {int /*<<< orphan*/  wait; int /*<<< orphan*/  root_extent_list; int /*<<< orphan*/  flags; struct rb_node rb_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  ordered_operations; struct btrfs_ordered_inode_tree ordered_tree; struct btrfs_root* root; } ;
struct TYPE_3__ {int /*<<< orphan*/  ordered_extent_lock; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_ORDERED_COMPLETE ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rb_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct btrfs_ordered_extent*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct inode *inode,
				 struct btrfs_ordered_extent *entry)
{
	struct btrfs_ordered_inode_tree *tree;
	struct btrfs_root *root = FUNC0(inode)->root;
	struct rb_node *node;

	tree = &FUNC0(inode)->ordered_tree;
	FUNC7(&tree->lock);
	node = &entry->rb_node;
	FUNC4(node, &tree->tree);
	tree->last = NULL;
	FUNC5(BTRFS_ORDERED_COMPLETE, &entry->flags);
	FUNC9(&tree->lock);

	FUNC6(&root->fs_info->ordered_extent_lock);
	FUNC2(&entry->root_extent_list);

	FUNC10(inode, entry);

	/*
	 * we have no more ordered extents for this inode and
	 * no dirty pages.  We can safely remove it from the
	 * list of ordered extents
	 */
	if (FUNC1(&tree->tree) &&
	    !FUNC3(inode->i_mapping, PAGECACHE_TAG_DIRTY)) {
		FUNC2(&FUNC0(inode)->ordered_operations);
	}
	FUNC8(&root->fs_info->ordered_extent_lock);
	FUNC11(&entry->wait);
}