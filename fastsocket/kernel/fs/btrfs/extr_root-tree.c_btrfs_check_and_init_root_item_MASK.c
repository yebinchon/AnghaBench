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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct btrfs_root_item {scalar_t__ byte_limit; scalar_t__ flags; TYPE_1__ inode; } ;

/* Variables and functions */
 int BTRFS_INODE_ROOT_ITEM_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct btrfs_root_item *root_item)
{
	u64 inode_flags = FUNC1(root_item->inode.flags);

	if (!(inode_flags & BTRFS_INODE_ROOT_ITEM_INIT)) {
		inode_flags |= BTRFS_INODE_ROOT_ITEM_INIT;
		root_item->inode.flags = FUNC0(inode_flags);
		root_item->flags = 0;
		root_item->byte_limit = 0;
	}
}