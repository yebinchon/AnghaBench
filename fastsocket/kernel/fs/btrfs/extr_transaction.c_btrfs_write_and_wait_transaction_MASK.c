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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct btrfs_trans_handle {TYPE_2__* transaction; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dirty_pages; } ;
struct TYPE_3__ {struct inode* btree_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_DIRTY ; 
 int FUNC0 (struct btrfs_root*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct btrfs_trans_handle *trans,
				     struct btrfs_root *root)
{
	if (!trans || !trans->transaction) {
		struct inode *btree_inode;
		btree_inode = root->fs_info->btree_inode;
		return FUNC1(btree_inode->i_mapping);
	}
	return FUNC0(root,
					   &trans->transaction->dirty_pages,
					   EXTENT_DIRTY);
}