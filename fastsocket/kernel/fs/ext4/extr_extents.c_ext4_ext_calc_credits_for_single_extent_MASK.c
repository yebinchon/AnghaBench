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
struct ext4_ext_path {TYPE_1__* p_hdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  eh_max; int /*<<< orphan*/  eh_entries; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int) ; 
 int FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct inode *inode, int nrblocks,
						struct ext4_ext_path *path)
{
	if (path) {
		int depth = FUNC2(inode);
		int ret = 0;

		/* probably there is space in leaf? */
		if (FUNC3(path[depth].p_hdr->eh_entries)
				< FUNC3(path[depth].p_hdr->eh_max)) {

			/*
			 *  There are some space in the leaf tree, no
			 *  need to account for leaf block credit
			 *
			 *  bitmaps and block group descriptor blocks
			 *  and other metadat blocks still need to be
			 *  accounted.
			 */
			/* 1 bitmap, 1 block group descriptor */
			ret = 2 + FUNC0(inode->i_sb);
			return ret;
		}
	}

	return FUNC1(inode, nrblocks);
}