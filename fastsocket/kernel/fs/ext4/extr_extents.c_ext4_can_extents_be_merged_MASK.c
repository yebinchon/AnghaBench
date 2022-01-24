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
struct inode {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;

/* Variables and functions */
 unsigned short EXT_INIT_MAX_LEN ; 
 unsigned short EXT_UNINIT_MAX_LEN ; 
 unsigned short FUNC0 (struct ext4_extent*) ; 
 int FUNC1 (struct ext4_extent*) ; 
 scalar_t__ FUNC2 (struct ext4_extent*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct inode *inode, struct ext4_extent *ex1,
				struct ext4_extent *ex2)
{
	unsigned short ext1_ee_len, ext2_ee_len, max_len;

	/*
	 * Make sure that either both extents are uninitialized, or
	 * both are _not_.
	 */
	if (FUNC1(ex1) ^ FUNC1(ex2))
		return 0;

	if (FUNC1(ex1))
		max_len = EXT_UNINIT_MAX_LEN;
	else
		max_len = EXT_INIT_MAX_LEN;

	ext1_ee_len = FUNC0(ex1);
	ext2_ee_len = FUNC0(ex2);

	if (FUNC3(ex1->ee_block) + ext1_ee_len !=
			FUNC3(ex2->ee_block))
		return 0;

	/*
	 * To allow future support for preallocated extents to be added
	 * as an RO_COMPAT feature, refuse to merge to extents if
	 * this can result in the top bit of ee_len being set.
	 */
	if (ext1_ee_len + ext2_ee_len > max_len)
		return 0;
#ifdef AGGRESSIVE_TEST
	if (ext1_ee_len >= 4)
		return 0;
#endif

	if (FUNC2(ex1) + ext1_ee_len == FUNC2(ex2))
		return 1;
	return 0;
}