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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext2_reserve_window_node {int /*<<< orphan*/  rsv_window; } ;
struct ext2_inode_info {struct ext2_block_alloc_info* i_block_alloc_info; } ;
struct ext2_block_alloc_info {struct ext2_reserve_window_node rsv_window_node; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_rsv_window_lock; } ;

/* Variables and functions */
 struct ext2_inode_info* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ext2_reserve_window_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct inode *inode)
{
	struct ext2_inode_info *ei = FUNC0(inode);
	struct ext2_block_alloc_info *block_i = ei->i_block_alloc_info;
	struct ext2_reserve_window_node *rsv;
	spinlock_t *rsv_lock = &FUNC1(inode->i_sb)->s_rsv_window_lock;

	if (!block_i)
		return;

	rsv = &block_i->rsv_window_node;
	if (!FUNC2(&rsv->rsv_window)) {
		FUNC4(rsv_lock);
		if (!FUNC2(&rsv->rsv_window))
			FUNC3(inode->i_sb, rsv);
		FUNC5(rsv_lock);
	}
}