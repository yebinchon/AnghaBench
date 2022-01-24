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
struct vfsmount {int dummy; } ;
struct kstat {unsigned long blocks; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {unsigned long i_reserved_data_blocks; int /*<<< orphan*/  i_block_reservation_lock; } ;
struct TYPE_3__ {unsigned long s_blocksize_bits; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct vfsmount *mnt, struct dentry *dentry,
		 struct kstat *stat)
{
	struct inode *inode;
	unsigned long delalloc_blocks;

	inode = dentry->d_inode;
	FUNC1(inode, stat);

	/*
	 * We can't update i_blocks if the block allocation is delayed
	 * otherwise in the case of system crash before the real block
	 * allocation is done, we will have i_blocks inconsistent with
	 * on-disk file blocks.
	 * We always keep i_blocks updated together with real
	 * allocation. But to not confuse with user, stat
	 * will return the blocks that include the delayed allocation
	 * blocks for this file.
	 */
	FUNC2(&FUNC0(inode)->i_block_reservation_lock);
	delalloc_blocks = FUNC0(inode)->i_reserved_data_blocks;
	FUNC3(&FUNC0(inode)->i_block_reservation_lock);

	stat->blocks += (delalloc_blocks << inode->i_sb->s_blocksize_bits)>>9;
	return 0;
}