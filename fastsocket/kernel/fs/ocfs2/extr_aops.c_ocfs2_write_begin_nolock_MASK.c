#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct ocfs2_write_ctxt {int w_clen; struct page* w_target_page; int /*<<< orphan*/  w_cpos; TYPE_3__* w_di_bh; int /*<<< orphan*/ * w_handle; TYPE_2__* w_desc; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_list; } ;
struct ocfs2_dinode {TYPE_1__ id2; int /*<<< orphan*/  i_clusters; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_9__ {scalar_t__ ip_blkno; } ;
struct TYPE_8__ {scalar_t__ b_data; } ;
struct TYPE_7__ {scalar_t__ c_needs_zero; } ;

/* Variables and functions */
 int EDQUOT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 int OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long,long long,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct ocfs2_write_ctxt**,struct ocfs2_super*,int /*<<< orphan*/ ,unsigned int,struct buffer_head*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct inode*,int /*<<< orphan*/ ,unsigned int,struct ocfs2_write_ctxt*) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_write_ctxt*) ; 
 int FUNC17 (struct address_space*,struct ocfs2_write_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct inode*,struct ocfs2_extent_tree*,unsigned int,unsigned int,struct ocfs2_alloc_context**,struct ocfs2_alloc_context**) ; 
 int FUNC21 (struct inode*,struct ocfs2_write_ctxt*,unsigned int*,unsigned int*) ; 
 int FUNC22 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct ocfs2_super*,struct ocfs2_write_ctxt*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/ * FUNC24 (struct ocfs2_super*,int) ; 
 scalar_t__ FUNC25 (struct ocfs2_super*) ; 
 int FUNC26 (struct address_space*,struct inode*,int /*<<< orphan*/ ,unsigned int,struct page*,struct ocfs2_write_ctxt*) ; 
 int FUNC27 (struct address_space*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,struct ocfs2_write_ctxt*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC28 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC30(struct address_space *mapping,
			     loff_t pos, unsigned len, unsigned flags,
			     struct page **pagep, void **fsdata,
			     struct buffer_head *di_bh, struct page *mmap_page)
{
	int ret, cluster_of_pages, credits = OCFS2_INODE_UPDATE_CREDITS;
	unsigned int clusters_to_alloc, extents_to_split;
	struct ocfs2_write_ctxt *wc;
	struct inode *inode = mapping->host;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct ocfs2_dinode *di;
	struct ocfs2_alloc_context *data_ac = NULL;
	struct ocfs2_alloc_context *meta_ac = NULL;
	handle_t *handle;
	struct ocfs2_extent_tree et;

	ret = FUNC9(&wc, osb, pos, len, di_bh);
	if (ret) {
		FUNC8(ret);
		return ret;
	}

	if (FUNC25(osb)) {
		ret = FUNC26(mapping, inode, pos, len,
						     mmap_page, wc);
		if (ret == 1) {
			ret = 0;
			goto success;
		}
		if (ret < 0) {
			FUNC8(ret);
			goto out;
		}
	}

	ret = FUNC14(inode, pos, len, wc);
	if (ret) {
		FUNC8(ret);
		goto out;
	}

	ret = FUNC11(inode, pos, len);
	if (ret < 0) {
		FUNC8(ret);
		goto out;
	} else if (ret == 1) {
		ret = FUNC22(inode, di_bh,
					 wc->w_cpos, wc->w_clen, UINT_MAX);
		if (ret) {
			FUNC8(ret);
			goto out;
		}
	}

	ret = FUNC21(inode, wc, &clusters_to_alloc,
					&extents_to_split);
	if (ret) {
		FUNC8(ret);
		goto out;
	}

	di = (struct ocfs2_dinode *)wc->w_di_bh->b_data;

	/*
	 * We set w_target_from, w_target_to here so that
	 * ocfs2_write_end() knows which range in the target page to
	 * write out. An allocation requires that we write the entire
	 * cluster range.
	 */
	if (clusters_to_alloc || extents_to_split) {
		/*
		 * XXX: We are stretching the limits of
		 * ocfs2_lock_allocators(). It greatly over-estimates
		 * the work to be done.
		 */
		FUNC7(0, "extend inode %llu, i_size = %lld, di->i_clusters = %u,"
		     " clusters_to_add = %u, extents_to_split = %u\n",
		     (unsigned long long)FUNC2(inode)->ip_blkno,
		     (long long)FUNC5(inode), FUNC6(di->i_clusters),
		     clusters_to_alloc, extents_to_split);

		FUNC18(&et, FUNC0(inode),
					      wc->w_di_bh);
		ret = FUNC20(inode, &et,
					    clusters_to_alloc, extents_to_split,
					    &data_ac, &meta_ac);
		if (ret) {
			FUNC8(ret);
			goto out;
		}

		credits = FUNC10(inode->i_sb,
						    &di->id2.i_list,
						    clusters_to_alloc);

	}

	/*
	 * We have to zero sparse allocated clusters, unwritten extent clusters,
	 * and non-sparse clusters we just extended.  For non-sparse writes,
	 * we know zeros will only be needed in the first and/or last cluster.
	 */
	if (clusters_to_alloc || extents_to_split ||
	    (wc->w_clen && (wc->w_desc[0].c_needs_zero ||
			    wc->w_desc[wc->w_clen - 1].c_needs_zero)))
		cluster_of_pages = 1;
	else
		cluster_of_pages = 0;

	FUNC23(osb, wc, pos, len, cluster_of_pages);

	handle = FUNC24(osb, credits);
	if (FUNC1(handle)) {
		ret = FUNC4(handle);
		FUNC8(ret);
		goto out;
	}

	wc->w_handle = handle;

	if (clusters_to_alloc && FUNC28(inode,
			FUNC12(osb->sb, clusters_to_alloc))) {
		ret = -EDQUOT;
		goto out_commit;
	}
	/*
	 * We don't want this to fail in ocfs2_write_end(), so do it
	 * here.
	 */
	ret = FUNC19(handle, FUNC0(inode), wc->w_di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC8(ret);
		goto out_quota;
	}

	/*
	 * Fill our page array first. That way we've grabbed enough so
	 * that we can zero and flush if we error after adding the
	 * extent.
	 */
	ret = FUNC17(mapping, wc, wc->w_cpos, pos,
					 cluster_of_pages, mmap_page);
	if (ret) {
		FUNC8(ret);
		goto out_quota;
	}

	ret = FUNC27(mapping, data_ac, meta_ac, wc, pos,
					  len);
	if (ret) {
		FUNC8(ret);
		goto out_quota;
	}

	if (data_ac)
		FUNC15(data_ac);
	if (meta_ac)
		FUNC15(meta_ac);

success:
	*pagep = wc->w_target_page;
	*fsdata = wc;
	return 0;
out_quota:
	if (clusters_to_alloc)
		FUNC29(inode,
			  FUNC12(osb->sb, clusters_to_alloc));
out_commit:
	FUNC13(osb, handle);

out:
	FUNC16(wc);

	if (data_ac)
		FUNC15(data_ac);
	if (meta_ac)
		FUNC15(meta_ac);
	return ret;
}