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
struct ext4_group_desc {int /*<<< orphan*/  bg_inode_table_hi; int /*<<< orphan*/  bg_inode_table_lo; } ;
typedef  int ext4_fsblk_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct super_block*) ; 
 scalar_t__ EXT4_MIN_DESC_SIZE_64BIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

ext4_fsblk_t FUNC2(struct super_block *sb,
			      struct ext4_group_desc *bg)
{
	return FUNC1(bg->bg_inode_table_lo) |
		(FUNC0(sb) >= EXT4_MIN_DESC_SIZE_64BIT ?
		 (ext4_fsblk_t)FUNC1(bg->bg_inode_table_hi) << 32 : 0);
}