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
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  dealloc; int /*<<< orphan*/ * meta_ac; int /*<<< orphan*/  handle; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int /*<<< orphan*/  xh_count; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_name_len; int /*<<< orphan*/  xe_name_offset; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_caching_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*,struct ocfs2_xattr_value_root*,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_super*,scalar_t__) ; 
 scalar_t__ FUNC14 (struct ocfs2_xattr_entry*) ; 
 int FUNC15 (struct inode*,struct ocfs2_xattr_value_buf*,int /*<<< orphan*/ ,struct ocfs2_xattr_set_ctxt*) ; 

__attribute__((used)) static int FUNC16(struct inode*inode,
				      struct ocfs2_xattr_value_buf *vb,
				      struct ocfs2_xattr_header *header,
				      struct ocfs2_caching_info *ref_ci,
				      struct buffer_head *ref_root_bh)
{
	int ret = 0, i, ref_credits;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct ocfs2_xattr_set_ctxt ctxt = { NULL, NULL, };
	void *val;

	FUNC8(&ctxt.dealloc);

	for (i = 0; i < FUNC4(header->xh_count); i++) {
		struct ocfs2_xattr_entry *entry = &header->xh_entries[i];

		if (FUNC14(entry))
			continue;

		val = (void *)header +
			FUNC4(entry->xe_name_offset);
		vb->vb_xv = (struct ocfs2_xattr_value_root *)
			(val + FUNC2(entry->xe_name_len));

		ret = FUNC9(inode, vb->vb_xv,
							 ref_ci, ref_root_bh,
							 &ctxt.meta_ac,
							 &ref_credits);

		ctxt.handle = FUNC13(osb, ref_credits +
					FUNC10(osb->sb));
		if (FUNC0(ctxt.handle)) {
			ret = FUNC3(ctxt.handle);
			FUNC5(ret);
			break;
		}

		ret = FUNC15(inode, vb, 0, &ctxt);
		if (ret < 0) {
			FUNC5(ret);
			break;
		}

		FUNC6(osb, ctxt.handle);
		if (ctxt.meta_ac) {
			FUNC7(ctxt.meta_ac);
			ctxt.meta_ac = NULL;
		}
	}

	if (ctxt.meta_ac)
		FUNC7(ctxt.meta_ac);
	FUNC12(osb, 1);
	FUNC11(osb, &ctxt.dealloc);
	return ret;
}