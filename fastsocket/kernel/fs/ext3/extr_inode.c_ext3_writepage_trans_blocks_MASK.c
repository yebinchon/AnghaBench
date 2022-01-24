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
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int EXT3_NDIR_BLOCKS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode)
{
	int bpp = FUNC1(inode);
	int indirects = (EXT3_NDIR_BLOCKS % bpp) ? 5 : 3;
	int ret;

	if (FUNC2(inode))
		ret = 3 * (bpp + indirects) + 2;
	else
		ret = 2 * (bpp + indirects) + 2;

#ifdef CONFIG_QUOTA
	/* We know that structure was already allocated during vfs_dq_init so
	 * we will be updating only the data blocks + inodes */
	ret += 2*EXT3_QUOTA_TRANS_BLOCKS(inode->i_sb);
#endif

	return ret;
}