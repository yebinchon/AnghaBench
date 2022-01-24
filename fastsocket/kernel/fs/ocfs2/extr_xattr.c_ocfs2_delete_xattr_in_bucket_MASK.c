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
typedef  size_t u16 ;
struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  dealloc; int /*<<< orphan*/ * meta_ac; int /*<<< orphan*/  handle; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int /*<<< orphan*/  xh_count; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_rm_xattr_bucket_para {int /*<<< orphan*/  ref_root_bh; int /*<<< orphan*/  ref_ci; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct ocfs2_xattr_header* FUNC3 (struct ocfs2_xattr_bucket*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct ocfs2_xattr_bucket*,size_t,struct ocfs2_xattr_value_root**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct inode*,struct ocfs2_xattr_value_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_super*,int) ; 
 int FUNC16 (struct inode*,struct ocfs2_xattr_bucket*,size_t,int /*<<< orphan*/ ,struct ocfs2_xattr_set_ctxt*) ; 
 scalar_t__ FUNC17 (struct ocfs2_xattr_entry*) ; 

__attribute__((used)) static int FUNC18(struct inode *inode,
					struct ocfs2_xattr_bucket *bucket,
					void *para)
{
	int ret = 0, ref_credits;
	struct ocfs2_xattr_header *xh = FUNC3(bucket);
	u16 i;
	struct ocfs2_xattr_entry *xe;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct ocfs2_xattr_set_ctxt ctxt = {NULL, NULL,};
	int credits = FUNC12(osb->sb) +
		FUNC6(inode->i_sb);
	struct ocfs2_xattr_value_root *xv;
	struct ocfs2_rm_xattr_bucket_para *args =
			(struct ocfs2_rm_xattr_bucket_para *)para;

	FUNC10(&ctxt.dealloc);

	for (i = 0; i < FUNC4(xh->xh_count); i++) {
		xe = &xh->xh_entries[i];
		if (FUNC17(xe))
			continue;

		ret = FUNC9(inode->i_sb, bucket,
						      i, &xv, NULL);

		ret = FUNC11(inode, xv,
							 args->ref_ci,
							 args->ref_root_bh,
							 &ctxt.meta_ac,
							 &ref_credits);

		ctxt.handle = FUNC15(osb, credits + ref_credits);
		if (FUNC0(ctxt.handle)) {
			ret = FUNC2(ctxt.handle);
			FUNC5(ret);
			break;
		}

		ret = FUNC16(inode, bucket,
							i, 0, &ctxt);

		FUNC7(osb, ctxt.handle);
		if (ctxt.meta_ac) {
			FUNC8(ctxt.meta_ac);
			ctxt.meta_ac = NULL;
		}
		if (ret) {
			FUNC5(ret);
			break;
		}
	}

	if (ctxt.meta_ac)
		FUNC8(ctxt.meta_ac);
	FUNC14(osb, 1);
	FUNC13(osb, &ctxt.dealloc);
	return ret;
}