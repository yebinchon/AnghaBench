#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nilfs_sb_info {int /*<<< orphan*/  s_inode_lock; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_dirty; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_BUSY ; 
 int /*<<< orphan*/  NILFS_I_DIRTY ; 
 struct nilfs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct inode *inode)
{
	struct nilfs_inode_info *ii = FUNC0(inode);
	struct nilfs_sb_info *sbi = FUNC1(inode->i_sb);
	int ret = 0;

	if (!FUNC2(&ii->i_dirty)) {
		FUNC3(&sbi->s_inode_lock);
		ret = FUNC5(NILFS_I_DIRTY, &ii->i_state) ||
			FUNC5(NILFS_I_BUSY, &ii->i_state);
		FUNC4(&sbi->s_inode_lock);
	}
	return ret;
}