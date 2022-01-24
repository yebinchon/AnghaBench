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
struct inode {TYPE_1__* i_sb; } ;
struct fiemap_extent_info {int fi_flags; } ;
typedef  int ext4_lblk_t ;
typedef  int __u64 ;
struct TYPE_2__ {int s_blocksize_bits; } ;

/* Variables and functions */
 int EBADR ; 
 int /*<<< orphan*/  EXT4_FIEMAP_FLAGS ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int EXT_MAX_BLOCKS ; 
 int FIEMAP_FLAG_XATTR ; 
 int FUNC0 (struct inode*,int,int,struct fiemap_extent_info*) ; 
 int /*<<< orphan*/  ext4_get_block ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct fiemap_extent_info*) ; 
 scalar_t__ FUNC3 (struct fiemap_extent_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct fiemap_extent_info*,int,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct inode *inode, struct fiemap_extent_info *fieinfo,
		__u64 start, __u64 len)
{
	ext4_lblk_t start_blk;
	int error = 0;

	/* fallback to generic here if not in extents fmt */
	if (!(FUNC1(inode, EXT4_INODE_EXTENTS)))
		return FUNC4(inode, fieinfo, start, len,
			ext4_get_block);

	if (FUNC3(fieinfo, EXT4_FIEMAP_FLAGS))
		return -EBADR;

	if (fieinfo->fi_flags & FIEMAP_FLAG_XATTR) {
		error = FUNC2(inode, fieinfo);
	} else {
		ext4_lblk_t len_blks;
		__u64 last_blk;

		start_blk = start >> inode->i_sb->s_blocksize_bits;
		last_blk = (start + len - 1) >> inode->i_sb->s_blocksize_bits;
		if (last_blk >= EXT_MAX_BLOCKS)
			last_blk = EXT_MAX_BLOCKS-1;
		len_blks = ((ext4_lblk_t) last_blk) - start_blk + 1;

		/*
		 * Walk the extent tree gathering extent information
		 * and pushing extents back to the user.
		 */
		error = FUNC0(inode, start_blk,
						 len_blks, fieinfo);
	}

	return error;
}