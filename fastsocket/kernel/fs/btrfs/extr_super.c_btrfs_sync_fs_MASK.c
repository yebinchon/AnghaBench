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
struct super_block {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {TYPE_1__* btree_inode; struct btrfs_root* tree_root; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 struct btrfs_fs_info* FUNC3 (struct super_block*) ; 
 struct btrfs_trans_handle* FUNC4 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(struct super_block *sb, int wait)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_fs_info *fs_info = FUNC3(sb);
	struct btrfs_root *root = fs_info->tree_root;
	int ret;

	FUNC7(wait);

	if (!wait) {
		FUNC6(fs_info->btree_inode->i_mapping);
		return 0;
	}

	FUNC5(root, 0, 0);

	trans = FUNC4(root, 0);
	if (FUNC0(trans))
		return FUNC1(trans);
	ret = FUNC2(trans, root);
	return ret;
}