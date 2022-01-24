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
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  orphan_inodes; int /*<<< orphan*/  orphan_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_HAS_ORPHAN_ITEM ; 
 int /*<<< orphan*/  BTRFS_INODE_ORPHAN_META_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct btrfs_trans_handle *trans, struct inode *inode)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	int delete_item = 0;
	int release_rsv = 0;
	int ret = 0;

	FUNC6(&root->orphan_lock);
	if (FUNC8(BTRFS_INODE_HAS_ORPHAN_ITEM,
			       &FUNC0(inode)->runtime_flags))
		delete_item = 1;

	if (FUNC8(BTRFS_INODE_ORPHAN_META_RESERVED,
			       &FUNC0(inode)->runtime_flags))
		release_rsv = 1;
	FUNC7(&root->orphan_lock);

	if (trans && delete_item) {
		ret = FUNC3(trans, root, FUNC4(inode));
		FUNC1(ret); /* -ENOMEM or corruption (JDM: Recheck) */
	}

	if (release_rsv) {
		FUNC5(inode);
		FUNC2(&root->orphan_inodes);
	}

	return 0;
}