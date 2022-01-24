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
struct super_block {int s_flags; } ;
struct inode {int i_state; int /*<<< orphan*/  i_sb_list; int /*<<< orphan*/  i_list; int /*<<< orphan*/  i_hash; struct super_block* i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_inodes; int /*<<< orphan*/  nr_unused; } ;

/* Variables and functions */
 int I_DIRTY ; 
 int I_FREEING ; 
 int I_NEW ; 
 int I_SYNC ; 
 int I_WILL_FREE ; 
 int MS_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inode_lock ; 
 int /*<<< orphan*/  inode_unused ; 
 TYPE_1__ inodes_stat ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 

int FUNC8(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;

	if (!FUNC2(&inode->i_hash)) {
		if (!(inode->i_state & (I_DIRTY|I_SYNC)))
			FUNC4(&inode->i_list, &inode_unused);
		inodes_stat.nr_unused++;
		if (sb->s_flags & MS_ACTIVE) {
			FUNC6(&inode_lock);
			return 0;
		}
		FUNC0(inode->i_state & I_NEW);
		inode->i_state |= I_WILL_FREE;
		FUNC6(&inode_lock);
		FUNC7(inode, 1);
		FUNC5(&inode_lock);
		FUNC0(inode->i_state & I_NEW);
		inode->i_state &= ~I_WILL_FREE;
		inodes_stat.nr_unused--;
		FUNC1(&inode->i_hash);
	}
	FUNC3(&inode->i_list);
	FUNC3(&inode->i_sb_list);
	FUNC0(inode->i_state & I_NEW);
	inode->i_state |= I_FREEING;
	inodes_stat.nr_inodes--;
	FUNC6(&inode_lock);
	return 1;
}