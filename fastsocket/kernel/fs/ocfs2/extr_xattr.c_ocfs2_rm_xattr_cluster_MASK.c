#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  xt_clusters; } ;
struct TYPE_4__ {TYPE_1__ xb_root; } ;
struct ocfs2_xattr_block {TYPE_2__ xb_attrs; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; struct inode* osb_tl_inode; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocfs2_delete_xattr_in_bucket ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC13 (struct inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC16 (struct inode*,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct ocfs2_alloc_context**) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC21 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/ * FUNC22 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct ocfs2_super*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC25(struct inode *inode,
				  struct buffer_head *root_bh,
				  u64 blkno,
				  u32 cpos,
				  u32 len,
				  void *para)
{
	int ret;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct inode *tl_inode = osb->osb_tl_inode;
	handle_t *handle;
	struct ocfs2_xattr_block *xb =
			(struct ocfs2_xattr_block *)root_bh->b_data;
	struct ocfs2_alloc_context *meta_ac = NULL;
	struct ocfs2_cached_dealloc_ctxt dealloc;
	struct ocfs2_extent_tree et;

	ret = FUNC13(inode, blkno, len,
					  ocfs2_delete_xattr_in_bucket, para);
	if (ret) {
		FUNC6(ret);
		return ret;
	}

	FUNC12(&et, FUNC0(inode), root_bh);

	FUNC11(&dealloc);

	FUNC5(0, "rm xattr extent rec at %u len = %u, start from %llu\n",
	     cpos, len, (unsigned long long)blkno);

	FUNC19(FUNC0(inode), blkno,
					       len);

	ret = FUNC16(inode, &et, 0, 1, NULL, &meta_ac);
	if (ret) {
		FUNC6(ret);
		return ret;
	}

	FUNC7(&tl_inode->i_mutex);

	if (FUNC24(osb)) {
		ret = FUNC3(osb);
		if (ret < 0) {
			FUNC6(ret);
			goto out;
		}
	}

	handle = FUNC22(osb, FUNC18(osb->sb));
	if (FUNC1(handle)) {
		ret = -ENOMEM;
		FUNC6(ret);
		goto out;
	}

	ret = FUNC14(handle, FUNC0(inode), root_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC6(ret);
		goto out_commit;
	}

	ret = FUNC17(handle, &et, cpos, len, meta_ac,
				  &dealloc);
	if (ret) {
		FUNC6(ret);
		goto out_commit;
	}

	FUNC4(&xb->xb_attrs.xb_root.xt_clusters, -len);

	ret = FUNC15(handle, root_bh);
	if (ret) {
		FUNC6(ret);
		goto out_commit;
	}

	ret = FUNC23(osb, handle, blkno, len);
	if (ret)
		FUNC6(ret);

out_commit:
	FUNC9(osb, handle);
out:
	FUNC21(osb, 1);

	FUNC8(&tl_inode->i_mutex);

	if (meta_ac)
		FUNC10(meta_ac);

	FUNC20(osb, &dealloc);

	return ret;
}