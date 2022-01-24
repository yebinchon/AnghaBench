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
struct ocfs2_xattr_value_buf {int /*<<< orphan*/  vb_xv; int /*<<< orphan*/  vb_bh; int /*<<< orphan*/  vb_access; } ;
struct ocfs2_xattr_tree_value_refcount_para {int /*<<< orphan*/  dealloc; int /*<<< orphan*/  ref_root_bh; int /*<<< orphan*/  ref_ci; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int /*<<< orphan*/  xh_count; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct ocfs2_xattr_bucket {int /*<<< orphan*/  bu_blocks; TYPE_1__** bu_bhs; } ;
struct ocfs2_post_refcount {int /*<<< orphan*/  func; struct ocfs2_xattr_bucket* para; int /*<<< orphan*/  credits; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ocfs2_xattr_bucket*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ocfs2_xattr_bucket*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct ocfs2_xattr_value_buf*) ; 
 int /*<<< orphan*/  ocfs2_journal_access ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_xattr_bucket_post_refcount ; 
 scalar_t__ FUNC9 (struct ocfs2_xattr_entry*) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_post_refcount*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
					     struct ocfs2_xattr_bucket *bucket,
					     void *para)
{
	int i, ret = 0;
	struct ocfs2_extent_tree et;
	struct ocfs2_xattr_tree_value_refcount_para *ref =
			(struct ocfs2_xattr_tree_value_refcount_para *)para;
	struct ocfs2_xattr_header *xh =
			(struct ocfs2_xattr_header *)bucket->bu_bhs[0]->b_data;
	struct ocfs2_xattr_entry *xe;
	struct ocfs2_xattr_value_buf vb = {
		.vb_access = ocfs2_journal_access,
	};
	struct ocfs2_post_refcount refcount = {
		.credits = bucket->bu_blocks,
		.para = bucket,
		.func = ocfs2_xattr_bucket_post_refcount,
	};
	struct ocfs2_post_refcount *p = NULL;

	/* We only need post_refcount if we support metaecc. */
	if (FUNC8(FUNC1(inode->i_sb)))
		p = &refcount;

	FUNC4(0, "refcount bucket %llu, count = %u\n",
	     (unsigned long long)FUNC2(bucket),
	     FUNC3(xh->xh_count));
	for (i = 0; i < FUNC3(xh->xh_count); i++) {
		xe = &xh->xh_entries[i];

		if (FUNC9(xe))
			continue;

		ret = FUNC6(inode->i_sb, bucket, i,
						      &vb.vb_xv, &vb.vb_bh);
		if (ret) {
			FUNC5(ret);
			break;
		}

		FUNC7(&et,
						   FUNC0(inode), &vb);

		ret = FUNC10(inode, vb.vb_xv,
							&et, ref->ref_ci,
							ref->ref_root_bh,
							ref->dealloc, p);
		if (ret) {
			FUNC5(ret);
			break;
		}
	}

	return ret;

}