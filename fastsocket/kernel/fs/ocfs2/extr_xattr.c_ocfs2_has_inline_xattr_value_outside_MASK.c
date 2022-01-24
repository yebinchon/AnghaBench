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
struct ocfs2_xattr_header {int /*<<< orphan*/ * xh_entries; int /*<<< orphan*/  xh_count; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_xattr_inline_size; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct inode *inode,
					 struct ocfs2_dinode *di)
{
	struct ocfs2_xattr_header *xh;
	int i;

	xh = (struct ocfs2_xattr_header *)
		 ((void *)di + inode->i_sb->s_blocksize -
		 FUNC0(di->i_xattr_inline_size));

	for (i = 0; i < FUNC0(xh->xh_count); i++)
		if (!FUNC1(&xh->xh_entries[i]))
			return 1;

	return 0;
}