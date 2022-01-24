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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_refcount_tree {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ; 

int FUNC4(struct inode *inode, int rw,
				      struct ocfs2_refcount_tree **ret_tree,
				      struct buffer_head **ref_bh)
{
	int ret;
	u64 ref_blkno;

	ret = FUNC2(inode, &ref_blkno);
	if (ret) {
		FUNC1(ret);
		return ret;
	}

	return FUNC3(FUNC0(inode->i_sb), ref_blkno,
					rw, ret_tree, ref_bh);
}