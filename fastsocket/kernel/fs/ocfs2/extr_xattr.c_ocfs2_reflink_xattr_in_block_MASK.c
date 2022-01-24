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
struct ocfs2_xattr_reflink {int /*<<< orphan*/  new_bh; int /*<<< orphan*/  new_inode; } ;
struct ocfs2_xattr_block {int /*<<< orphan*/  xb_flags; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int OCFS2_XATTR_INDEXED ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**,int) ; 
 int FUNC4 (struct ocfs2_xattr_reflink*,struct buffer_head*,struct buffer_head*) ; 
 int FUNC5 (struct ocfs2_xattr_reflink*,struct buffer_head*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_xattr_reflink *args,
					struct buffer_head *blk_bh)
{
	int ret, indexed = 0;
	struct buffer_head *new_blk_bh = NULL;
	struct ocfs2_xattr_block *xb =
			(struct ocfs2_xattr_block *)blk_bh->b_data;


	if (FUNC1(xb->xb_flags) & OCFS2_XATTR_INDEXED)
		indexed = 1;

	ret = FUNC3(args->new_inode, args->new_bh,
					     &new_blk_bh, indexed);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	if (!(FUNC1(xb->xb_flags) & OCFS2_XATTR_INDEXED))
		ret = FUNC4(args, blk_bh, new_blk_bh);
	else
		ret = FUNC5(args, blk_bh, new_blk_bh);
	if (ret)
		FUNC2(ret);

out:
	FUNC0(new_blk_bh);
	return ret;
}