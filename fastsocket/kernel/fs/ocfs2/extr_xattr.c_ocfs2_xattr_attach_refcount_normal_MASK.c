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
struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_value_buf {struct ocfs2_xattr_value_root* vb_xv; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int /*<<< orphan*/  xh_count; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_name_len; int /*<<< orphan*/  xe_name_offset; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct ocfs2_xattr_value_buf*) ; 
 scalar_t__ FUNC5 (struct ocfs2_xattr_entry*) ; 
 int FUNC6 (struct inode*,struct ocfs2_xattr_value_root*,struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*,struct ocfs2_cached_dealloc_ctxt*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
				struct ocfs2_xattr_value_buf *vb,
				struct ocfs2_xattr_header *header,
				struct ocfs2_caching_info *ref_ci,
				struct buffer_head *ref_root_bh,
				struct ocfs2_cached_dealloc_ctxt *dealloc)
{

	struct ocfs2_xattr_entry *xe;
	struct ocfs2_xattr_value_root *xv;
	struct ocfs2_extent_tree et;
	int i, ret = 0;

	for (i = 0; i < FUNC2(header->xh_count); i++) {
		xe = &header->xh_entries[i];

		if (FUNC5(xe))
			continue;

		xv = (struct ocfs2_xattr_value_root *)((void *)header +
			FUNC2(xe->xe_name_offset) +
			FUNC1(xe->xe_name_len));

		vb->vb_xv = xv;
		FUNC4(&et, FUNC0(inode), vb);

		ret = FUNC6(inode, xv, &et,
							ref_ci, ref_root_bh,
							dealloc, NULL);
		if (ret) {
			FUNC3(ret);
			break;
		}
	}

	return ret;
}