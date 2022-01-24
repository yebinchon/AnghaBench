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
struct ext3_iloc {unsigned long block_group; unsigned long offset; } ;
struct ext3_group_desc {int /*<<< orphan*/  bg_inode_table; } ;
typedef  scalar_t__ ext3_fsblk_t ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 unsigned long FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (struct super_block*) ; 
 unsigned long FUNC3 (struct super_block*) ; 
 struct ext3_group_desc* FUNC4 (struct super_block*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ext3_fsblk_t FUNC7(struct super_block *sb,
		unsigned long ino, struct ext3_iloc *iloc)
{
	unsigned long block_group;
	unsigned long offset;
	ext3_fsblk_t block;
	struct ext3_group_desc *gdp;

	if (!FUNC5(sb, ino)) {
		/*
		 * This error is already checked for in namei.c unless we are
		 * looking at an NFS filehandle, in which case no error
		 * report is needed
		 */
		return 0;
	}

	block_group = (ino - 1) / FUNC2(sb);
	gdp = FUNC4(sb, block_group, NULL);
	if (!gdp)
		return 0;
	/*
	 * Figure out the offset within the block group inode table
	 */
	offset = ((ino - 1) % FUNC2(sb)) *
		FUNC3(sb);
	block = FUNC6(gdp->bg_inode_table) +
		(offset >> FUNC1(sb));

	iloc->block_group = block_group;
	iloc->offset = offset & (FUNC0(sb) - 1);
	return block;
}