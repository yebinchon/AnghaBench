#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_xattr_search {int not_found; struct buffer_head* xattr_bh; TYPE_3__* header; int /*<<< orphan*/  here; void* end; void* base; TYPE_1__* inode_bh; } ;
struct TYPE_6__ {int /*<<< orphan*/  xh_entries; } ;
struct TYPE_5__ {TYPE_3__ xb_header; } ;
struct ocfs2_xattr_block {TYPE_2__ xb_attrs; int /*<<< orphan*/  xb_flags; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_xattr_loc; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENODATA ; 
 int OCFS2_XATTR_INDEXED ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC5 (int,char const*,struct ocfs2_xattr_search*) ; 
 int FUNC6 (struct inode*,struct buffer_head*,int,char const*,struct ocfs2_xattr_search*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
				  int name_index,
				  const char *name,
				  struct ocfs2_xattr_search *xs)
{
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)xs->inode_bh->b_data;
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

	xs->xattr_bh = blk_bh;
	xb = (struct ocfs2_xattr_block *)blk_bh->b_data;

	if (!(FUNC1(xb->xb_flags) & OCFS2_XATTR_INDEXED)) {
		xs->header = &xb->xb_attrs.xb_header;
		xs->base = (void *)xs->header;
		xs->end = (void *)(blk_bh->b_data) + blk_bh->b_size;
		xs->here = xs->header->xh_entries;

		ret = FUNC5(name_index, name, xs);
	} else
		ret = FUNC6(inode, blk_bh,
						   name_index,
						   name, xs);

	if (ret && ret != -ENODATA) {
		xs->xattr_bh = NULL;
		goto cleanup;
	}
	xs->not_found = ret;
	return 0;
cleanup:
	FUNC0(blk_bh);

	return ret;
}