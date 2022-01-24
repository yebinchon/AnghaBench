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
struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_DUMMY ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 scalar_t__ WB_SYNC_ALL ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct btrfs_root*,struct inode*) ; 
 struct btrfs_trans_handle* FUNC7 (struct btrfs_root*) ; 
 struct btrfs_trans_handle* FUNC8 (struct btrfs_root*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct inode *inode, struct writeback_control *wbc)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_trans_handle *trans;
	int ret = 0;
	bool nolock = false;

	if (FUNC9(BTRFS_INODE_DUMMY, &FUNC0(inode)->runtime_flags))
		return 0;

	if (FUNC5(root->fs_info) && FUNC6(root, inode))
		nolock = true;

	if (wbc->sync_mode == WB_SYNC_ALL) {
		if (nolock)
			trans = FUNC8(root);
		else
			trans = FUNC7(root);
		if (FUNC1(trans))
			return FUNC2(trans);
		if (nolock)
			ret = FUNC4(trans, root);
		else
			ret = FUNC3(trans, root);
	}
	return ret;
}