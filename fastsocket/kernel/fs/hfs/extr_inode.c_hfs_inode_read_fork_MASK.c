#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct hfs_extent {int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  hfs_extent_rec ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int phys_size; int fs_blocks; int alloc_blocks; int clump_blocks; scalar_t__ first_blocks; int /*<<< orphan*/  first_extents; } ;
struct TYPE_3__ {int alloc_blksz; int clumpablks; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hfs_extent*,int) ; 

void FUNC6(struct inode *inode, struct hfs_extent *ext,
			 __be32 __log_size, __be32 phys_size, u32 clump_size)
{
	struct super_block *sb = inode->i_sb;
	u32 log_size = FUNC3(__log_size);
	u16 count;
	int i;

	FUNC5(FUNC0(inode)->first_extents, ext, sizeof(hfs_extent_rec));
	for (count = 0, i = 0; i < 3; i++)
		count += FUNC2(ext[i].count);
	FUNC0(inode)->first_blocks = count;

	inode->i_size = FUNC0(inode)->phys_size = log_size;
	FUNC0(inode)->fs_blocks = (log_size + sb->s_blocksize - 1) >> sb->s_blocksize_bits;
	FUNC4(inode, FUNC0(inode)->fs_blocks << sb->s_blocksize_bits);
	FUNC0(inode)->alloc_blocks = FUNC3(phys_size) /
				     FUNC1(sb)->alloc_blksz;
	FUNC0(inode)->clump_blocks = clump_size / FUNC1(sb)->alloc_blksz;
	if (!FUNC0(inode)->clump_blocks)
		FUNC0(inode)->clump_blocks = FUNC1(sb)->clumpablks;
}