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
struct ext4_allocation_request {unsigned long len; unsigned int flags; int /*<<< orphan*/  goal; struct inode* inode; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
typedef  int /*<<< orphan*/  ar ;
struct TYPE_2__ {unsigned long i_allocated_meta_blocks; int /*<<< orphan*/  i_block_reservation_lock; scalar_t__ i_delalloc_reserved_flag; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ext4_allocation_request*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_allocation_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,unsigned long) ; 

ext4_fsblk_t FUNC6(handle_t *handle, struct inode *inode,
				  ext4_fsblk_t goal, unsigned int flags,
				  unsigned long *count, int *errp)
{
	struct ext4_allocation_request ar;
	ext4_fsblk_t ret;

	FUNC2(&ar, 0, sizeof(ar));
	/* Fill with neighbour allocated blocks */
	ar.inode = inode;
	ar.goal = goal;
	ar.len = count ? *count : 1;
	ar.flags = flags;

	ret = FUNC1(handle, &ar, errp);
	if (count)
		*count = ar.len;
	/*
	 * Account for the allocated meta blocks.  We will never
	 * fail EDQUOT for metdata, but we do account for it.
	 */
	if (!(*errp) && FUNC0(inode)->i_delalloc_reserved_flag) {
		FUNC3(&FUNC0(inode)->i_block_reservation_lock);
		FUNC0(inode)->i_allocated_meta_blocks += ar.len;
		FUNC4(&FUNC0(inode)->i_block_reservation_lock);
		FUNC5(inode, ar.len);
	}
	return ret;
}