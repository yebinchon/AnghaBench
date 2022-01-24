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
typedef  int ext4_group_t ;
struct TYPE_2__ {int s_gdb_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,int,int) ; 

int FUNC4(struct inode *inode, int nrblocks, int chunk)
{
	ext4_group_t groups, ngroups = FUNC2(inode->i_sb);
	int gdpblocks;
	int idxblocks;
	int ret = 0;

	/*
	 * How many index blocks need to touch to modify nrblocks?
	 * The "Chunk" flag indicating whether the nrblocks is
	 * physically contiguous on disk
	 *
	 * For Direct IO and fallocate, they calls get_block to allocate
	 * one single extent at a time, so they could set the "Chunk" flag
	 */
	idxblocks = FUNC3(inode, nrblocks, chunk);

	ret = idxblocks;

	/*
	 * Now let's see how many group bitmaps and group descriptors need
	 * to account
	 */
	groups = idxblocks;
	if (chunk)
		groups += 1;
	else
		groups += nrblocks;

	gdpblocks = groups;
	if (groups > ngroups)
		groups = ngroups;
	if (groups > FUNC1(inode->i_sb)->s_gdb_count)
		gdpblocks = FUNC1(inode->i_sb)->s_gdb_count;

	/* bitmaps and block group descriptor blocks */
	ret += groups + gdpblocks;

	/* Blocks for super block, inode, quota and xattr blocks */
	ret += FUNC0(inode->i_sb);

	return ret;
}