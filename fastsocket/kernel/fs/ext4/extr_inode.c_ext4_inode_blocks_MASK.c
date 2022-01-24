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
typedef  int u64 ;
struct super_block {int dummy; } ;
struct inode {int i_blkbits; struct super_block* i_sb; } ;
struct ext4_inode_info {struct inode vfs_inode; } ;
struct ext4_inode {int /*<<< orphan*/  i_blocks_lo; int /*<<< orphan*/  i_blocks_high; } ;
typedef  int blkcnt_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_FEATURE_RO_COMPAT_HUGE_FILE ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_INODE_HUGE_FILE ; 
 scalar_t__ FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static blkcnt_t FUNC4(struct ext4_inode *raw_inode,
				  struct ext4_inode_info *ei)
{
	blkcnt_t i_blocks ;
	struct inode *inode = &(ei->vfs_inode);
	struct super_block *sb = inode->i_sb;

	if (FUNC0(sb,
				EXT4_FEATURE_RO_COMPAT_HUGE_FILE)) {
		/* we are using combined 48 bit field */
		i_blocks = ((u64)FUNC2(raw_inode->i_blocks_high)) << 32 |
					FUNC3(raw_inode->i_blocks_lo);
		if (FUNC1(inode, EXT4_INODE_HUGE_FILE)) {
			/* i_blocks represent file system block size */
			return i_blocks  << (inode->i_blkbits - 9);
		} else {
			return i_blocks;
		}
	} else {
		return FUNC3(raw_inode->i_blocks_lo);
	}
}