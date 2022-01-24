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
typedef  unsigned int u64 ;
struct super_block {int dummy; } ;
struct inode {unsigned int i_blocks; int i_blkbits; struct super_block* i_sb; } ;
struct ext4_inode_info {struct inode vfs_inode; } ;
struct ext4_inode {void* i_blocks_high; void* i_blocks_lo; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EFBIG ; 
 int /*<<< orphan*/  EXT4_FEATURE_RO_COMPAT_HUGE_FILE ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_INODE_HUGE_FILE ; 
 void* FUNC1 (unsigned int) ; 
 void* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(handle_t *handle,
				struct ext4_inode *raw_inode,
				struct ext4_inode_info *ei)
{
	struct inode *inode = &(ei->vfs_inode);
	u64 i_blocks = inode->i_blocks;
	struct super_block *sb = inode->i_sb;

	if (i_blocks <= ~0U) {
		/*
		 * i_blocks can be represnted in a 32 bit variable
		 * as multiple of 512 bytes
		 */
		raw_inode->i_blocks_lo   = FUNC2(i_blocks);
		raw_inode->i_blocks_high = 0;
		FUNC3(inode, EXT4_INODE_HUGE_FILE);
		return 0;
	}
	if (!FUNC0(sb, EXT4_FEATURE_RO_COMPAT_HUGE_FILE))
		return -EFBIG;

	if (i_blocks <= 0xffffffffffffULL) {
		/*
		 * i_blocks can be represented in a 48 bit variable
		 * as multiple of 512 bytes
		 */
		raw_inode->i_blocks_lo   = FUNC2(i_blocks);
		raw_inode->i_blocks_high = FUNC1(i_blocks >> 32);
		FUNC3(inode, EXT4_INODE_HUGE_FILE);
	} else {
		FUNC4(inode, EXT4_INODE_HUGE_FILE);
		/* i_block is stored in file system block size */
		i_blocks = i_blocks >> (inode->i_blkbits - 9);
		raw_inode->i_blocks_lo   = FUNC2(i_blocks);
		raw_inode->i_blocks_high = FUNC1(i_blocks >> 32);
	}
	return 0;
}