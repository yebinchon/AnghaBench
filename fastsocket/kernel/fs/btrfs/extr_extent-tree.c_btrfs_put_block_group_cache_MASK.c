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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_root; } ;
struct TYPE_2__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {TYPE_1__ key; int /*<<< orphan*/  lock; struct inode* inode; scalar_t__ iref; } ;

/* Variables and functions */
 struct btrfs_block_group_cache* FUNC0 (struct btrfs_fs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct btrfs_block_group_cache* FUNC3 (int /*<<< orphan*/ ,struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct btrfs_fs_info *info)
{
	struct btrfs_block_group_cache *block_group;
	u64 last = 0;

	while (1) {
		struct inode *inode;

		block_group = FUNC0(info, last);
		while (block_group) {
			FUNC4(&block_group->lock);
			if (block_group->iref)
				break;
			FUNC5(&block_group->lock);
			block_group = FUNC3(info->tree_root,
						       block_group);
		}
		if (!block_group) {
			if (last == 0)
				break;
			last = 0;
			continue;
		}

		inode = block_group->inode;
		block_group->iref = 0;
		block_group->inode = NULL;
		FUNC5(&block_group->lock);
		FUNC2(inode);
		last = block_group->key.objectid + block_group->key.offset;
		FUNC1(block_group);
	}
}