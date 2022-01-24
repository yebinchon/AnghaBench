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
struct ocfs2_xattr_header {int dummy; } ;
struct TYPE_2__ {struct ocfs2_xattr_header xb_header; } ;
struct ocfs2_xattr_block {TYPE_1__ xb_attrs; int /*<<< orphan*/  xb_flags; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_xattr_loc; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int OCFS2_XATTR_INDEXED ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC5 (struct inode*,struct ocfs2_xattr_header*,char*,size_t) ; 
 int FUNC6 (struct inode*,struct buffer_head*,char*,size_t) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
				  struct ocfs2_dinode *di,
				  char *buffer,
				  size_t buffer_size)
{
	struct buffer_head *blk_bh = NULL;
	struct ocfs2_xattr_block *xb;
	int ret = 0;

	if (!di->i_xattr_loc)
		return ret;

	ret = FUNC4(inode, FUNC2(di->i_xattr_loc),
				     &blk_bh);
	if (ret < 0) {
		FUNC3(ret);
		return ret;
	}

	xb = (struct ocfs2_xattr_block *)blk_bh->b_data;
	if (!(FUNC1(xb->xb_flags) & OCFS2_XATTR_INDEXED)) {
		struct ocfs2_xattr_header *header = &xb->xb_attrs.xb_header;
		ret = FUNC5(inode, header,
					       buffer, buffer_size);
	} else
		ret = FUNC6(inode, blk_bh,
						   buffer, buffer_size);

	FUNC0(blk_bh);

	return ret;
}