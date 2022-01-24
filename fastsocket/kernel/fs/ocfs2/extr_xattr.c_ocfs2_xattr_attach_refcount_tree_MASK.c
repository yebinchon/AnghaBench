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
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_xattr_loc; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_XATTR_FL ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC5 (struct inode*,struct buffer_head*,struct ocfs2_caching_info*,struct buffer_head*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC6 (struct inode*,struct buffer_head*,struct ocfs2_caching_info*,struct buffer_head*,struct ocfs2_cached_dealloc_ctxt*) ; 

int FUNC7(struct inode *inode,
				     struct buffer_head *fe_bh,
				     struct ocfs2_caching_info *ref_ci,
				     struct buffer_head *ref_root_bh,
				     struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret = 0;
	struct ocfs2_inode_info *oi = FUNC0(inode);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)fe_bh->b_data;
	struct buffer_head *blk_bh = NULL;

	if (oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL) {
		ret = FUNC6(inode, fe_bh,
							 ref_ci, ref_root_bh,
							 dealloc);
		if (ret) {
			FUNC3(ret);
			goto out;
		}
	}

	if (!di->i_xattr_loc)
		goto out;

	ret = FUNC4(inode, FUNC2(di->i_xattr_loc),
				     &blk_bh);
	if (ret < 0) {
		FUNC3(ret);
		goto out;
	}

	ret = FUNC5(inode, blk_bh, ref_ci,
						ref_root_bh, dealloc);
	if (ret)
		FUNC3(ret);

	FUNC1(blk_bh);
out:

	return ret;
}