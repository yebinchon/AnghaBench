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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; struct inode* osb_tl_inode; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_root_bh; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_alloc_context*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct inode*,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct ocfs2_alloc_context**) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct ocfs2_super*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC21(struct inode *inode,
			     struct ocfs2_extent_tree *et,
			     u32 cpos, u32 phys_cpos, u32 len,
			     struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret;
	u64 phys_blkno = FUNC7(inode->i_sb, phys_cpos);
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct inode *tl_inode = osb->osb_tl_inode;
	handle_t *handle;
	struct ocfs2_alloc_context *meta_ac = NULL;

	ret = FUNC14(inode, et, 0, 1, NULL, &meta_ac);
	if (ret) {
		FUNC4(ret);
		return ret;
	}

	FUNC5(&tl_inode->i_mutex);

	if (FUNC19(osb)) {
		ret = FUNC3(osb);
		if (ret < 0) {
			FUNC4(ret);
			goto out;
		}
	}

	handle = FUNC17(osb, FUNC16(osb->sb));
	if (FUNC0(handle)) {
		ret = FUNC2(handle);
		FUNC4(ret);
		goto out;
	}

	ret = FUNC10(handle, et,
					   OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	FUNC20(inode,
				  FUNC8(inode->i_sb, len));

	ret = FUNC15(handle, et, cpos, len, meta_ac, dealloc);
	if (ret) {
		FUNC4(ret);
		goto out_commit;
	}

	FUNC11(et, -len);

	ret = FUNC13(handle, et->et_root_bh);
	if (ret) {
		FUNC4(ret);
		goto out_commit;
	}

	ret = FUNC18(osb, handle, phys_blkno, len);
	if (ret)
		FUNC4(ret);

out_commit:
	FUNC9(osb, handle);
out:
	FUNC6(&tl_inode->i_mutex);

	if (meta_ac)
		FUNC12(meta_ac);

	return ret;
}