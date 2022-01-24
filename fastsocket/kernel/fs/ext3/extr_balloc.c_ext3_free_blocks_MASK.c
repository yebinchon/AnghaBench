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
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext3_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct super_block*,int /*<<< orphan*/ ,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,unsigned long) ; 

void FUNC3(handle_t *handle, struct inode *inode,
			ext3_fsblk_t block, unsigned long count)
{
	struct super_block *sb = inode->i_sb;
	unsigned long dquot_freed_blocks;

	FUNC1(inode, block, count);
	FUNC0(handle, sb, block, count, &dquot_freed_blocks);
	if (dquot_freed_blocks)
		FUNC2(inode, dquot_freed_blocks);
	return;
}