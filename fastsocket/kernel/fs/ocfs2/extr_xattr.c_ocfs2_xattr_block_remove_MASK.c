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
struct ocfs2_xattr_value_buf {int /*<<< orphan*/  vb_access; struct buffer_head* vb_bh; } ;
struct ocfs2_xattr_header {int dummy; } ;
struct TYPE_2__ {struct ocfs2_xattr_header xb_header; } ;
struct ocfs2_xattr_block {TYPE_1__ xb_attrs; int /*<<< orphan*/  xb_flags; } ;
struct ocfs2_rm_xattr_bucket_para {struct buffer_head* ref_root_bh; struct ocfs2_caching_info* ref_ci; } ;
struct ocfs2_caching_info {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int OCFS2_XATTR_INDEXED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,struct ocfs2_rm_xattr_bucket_para*) ; 
 int /*<<< orphan*/  ocfs2_journal_access_xb ; 
 int FUNC2 (struct inode*,struct ocfs2_xattr_value_buf*,struct ocfs2_xattr_header*,struct ocfs2_caching_info*,struct buffer_head*) ; 
 int /*<<< orphan*/  ocfs2_rm_xattr_cluster ; 

__attribute__((used)) static int FUNC3(struct inode *inode,
				    struct buffer_head *blk_bh,
				    struct ocfs2_caching_info *ref_ci,
				    struct buffer_head *ref_root_bh)
{
	struct ocfs2_xattr_block *xb;
	int ret = 0;
	struct ocfs2_xattr_value_buf vb = {
		.vb_bh = blk_bh,
		.vb_access = ocfs2_journal_access_xb,
	};
	struct ocfs2_rm_xattr_bucket_para args = {
		.ref_ci = ref_ci,
		.ref_root_bh = ref_root_bh,
	};

	xb = (struct ocfs2_xattr_block *)blk_bh->b_data;
	if (!(FUNC0(xb->xb_flags) & OCFS2_XATTR_INDEXED)) {
		struct ocfs2_xattr_header *header = &(xb->xb_attrs.xb_header);
		ret = FUNC2(inode, &vb, header,
						 ref_ci, ref_root_bh);
	} else
		ret = FUNC1(inode,
						blk_bh,
						ocfs2_rm_xattr_cluster,
						&args);

	return ret;
}