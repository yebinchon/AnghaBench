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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_xattr_value_buf {int (* vb_access ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  vb_bh; TYPE_1__* vb_xv; } ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  dealloc; int /*<<< orphan*/  meta_ac; int /*<<< orphan*/ * handle; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  xr_clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 unsigned int OCFS2_EXT_REFCOUNTED ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct ocfs2_xattr_value_buf*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
				      struct ocfs2_xattr_value_buf *vb,
				      u32 cpos, u32 phys_cpos, u32 len,
				      unsigned int ext_flags,
				      struct ocfs2_xattr_set_ctxt *ctxt)
{
	int ret;
	u64 phys_blkno = FUNC5(inode->i_sb, phys_cpos);
	handle_t *handle = ctxt->handle;
	struct ocfs2_extent_tree et;

	FUNC7(&et, FUNC0(inode), vb);

	ret = vb->vb_access(handle, FUNC0(inode), vb->vb_bh,
			    OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	ret = FUNC9(handle, &et, cpos, len, ctxt->meta_ac,
				  &ctxt->dealloc);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	FUNC1(&vb->vb_xv->xr_clusters, -len);

	ret = FUNC8(handle, vb->vb_bh);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	if (ext_flags & OCFS2_EXT_REFCOUNTED)
		ret = FUNC6(inode, handle,
					FUNC3(inode->i_sb,
								 phys_blkno),
					len, ctxt->meta_ac, &ctxt->dealloc, 1);
	else
		ret = FUNC4(&ctxt->dealloc,
						  phys_blkno, len);
	if (ret)
		FUNC2(ret);

out:
	return ret;
}