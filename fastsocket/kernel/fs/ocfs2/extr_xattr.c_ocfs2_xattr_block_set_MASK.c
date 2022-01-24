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
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  meta_ac; int /*<<< orphan*/ * handle; } ;
struct ocfs2_xattr_search {struct buffer_head* xattr_bh; TYPE_3__* header; int /*<<< orphan*/  here; void* end; void* base; int /*<<< orphan*/  inode_bh; } ;
struct ocfs2_xattr_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  xh_entries; } ;
struct TYPE_4__ {TYPE_3__ xb_header; } ;
struct ocfs2_xattr_block {int /*<<< orphan*/  xb_flags; TYPE_1__ xb_attrs; } ;
struct inode {TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {int s_blocksize; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  OCFS2_HAS_XATTR_FL ; 
 int OCFS2_XATTR_INDEXED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ; 
 int FUNC4 (struct inode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
				 struct ocfs2_xattr_info *xi,
				 struct ocfs2_xattr_search *xs,
				 struct ocfs2_xattr_set_ctxt *ctxt)
{
	struct buffer_head *new_bh = NULL;
	handle_t *handle = ctxt->handle;
	struct ocfs2_xattr_block *xblk = NULL;
	int ret;

	if (!xs->xattr_bh) {
		ret = FUNC2(handle, inode, xs->inode_bh,
					       ctxt->meta_ac, &new_bh, 0);
		if (ret) {
			FUNC1(ret);
			goto end;
		}

		xs->xattr_bh = new_bh;
		xblk = (struct ocfs2_xattr_block *)xs->xattr_bh->b_data;
		xs->header = &xblk->xb_attrs.xb_header;
		xs->base = (void *)xs->header;
		xs->end = (void *)xblk + inode->i_sb->s_blocksize;
		xs->here = xs->header->xh_entries;
	} else
		xblk = (struct ocfs2_xattr_block *)xs->xattr_bh->b_data;

	if (!(FUNC0(xblk->xb_flags) & OCFS2_XATTR_INDEXED)) {
		/* Set extended attribute into external block */
		ret = FUNC4(inode, xi, xs, ctxt,
					    OCFS2_HAS_XATTR_FL);
		if (!ret || ret != -ENOSPC)
			goto end;

		ret = FUNC3(inode, xs, ctxt);
		if (ret)
			goto end;
	}

	ret = FUNC5(inode, xi, xs, ctxt);

end:

	return ret;
}