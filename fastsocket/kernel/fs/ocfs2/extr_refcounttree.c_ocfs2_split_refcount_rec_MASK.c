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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct ocfs2_refcount_rec {scalar_t__ r_cpos; int r_clusters; int r_refcount; } ;
struct ocfs2_refcount_list {int rl_count; struct ocfs2_refcount_rec* rl_recs; int /*<<< orphan*/  rl_used; } ;
struct ocfs2_refcount_block {int rf_flags; struct ocfs2_refcount_list rf_records; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int OCFS2_REFCOUNT_TREE_FL ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_refcount_rec*,struct ocfs2_refcount_rec*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_refcount_rec*,struct ocfs2_refcount_rec*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,unsigned long long,int,int,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_alloc_context*) ; 
 int FUNC13 (struct ocfs2_caching_info*,struct buffer_head*,scalar_t__,int,struct ocfs2_refcount_rec*,int*,struct buffer_head**) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_refcount_block*,int) ; 

__attribute__((used)) static int FUNC17(handle_t *handle,
				    struct ocfs2_caching_info *ci,
				    struct buffer_head *ref_root_bh,
				    struct buffer_head *ref_leaf_bh,
				    struct ocfs2_refcount_rec *split_rec,
				    int index, int merge,
				    struct ocfs2_alloc_context *meta_ac,
				    struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret, recs_need;
	u32 len;
	struct ocfs2_refcount_block *rb =
			(struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
	struct ocfs2_refcount_list *rf_list = &rb->rf_records;
	struct ocfs2_refcount_rec *orig_rec = &rf_list->rl_recs[index];
	struct ocfs2_refcount_rec *tail_rec = NULL;
	struct buffer_head *new_bh = NULL;

	FUNC0(FUNC5(rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL);

	FUNC10(0, "original r_pos %llu, cluster %u, split %llu, cluster %u\n",
	     FUNC7(orig_rec->r_cpos), FUNC5(orig_rec->r_clusters),
	     FUNC7(split_rec->r_cpos),
	     FUNC5(split_rec->r_clusters));

	/*
	 * If we just need to split the header or tail clusters,
	 * no more recs are needed, just split is OK.
	 * Otherwise we at least need one new recs.
	 */
	if (!split_rec->r_refcount &&
	    (split_rec->r_cpos == orig_rec->r_cpos ||
	     FUNC7(split_rec->r_cpos) +
	     FUNC5(split_rec->r_clusters) ==
	     FUNC7(orig_rec->r_cpos) + FUNC5(orig_rec->r_clusters)))
		recs_need = 0;
	else
		recs_need = 1;

	/*
	 * We need one more rec if we split in the middle and the new rec have
	 * some refcount in it.
	 */
	if (split_rec->r_refcount &&
	    (split_rec->r_cpos != orig_rec->r_cpos &&
	     FUNC7(split_rec->r_cpos) +
	     FUNC5(split_rec->r_clusters) !=
	     FUNC7(orig_rec->r_cpos) + FUNC5(orig_rec->r_clusters)))
		recs_need++;

	/* If the leaf block don't have enough record, expand it. */
	if (FUNC4(rf_list->rl_used) + recs_need > rf_list->rl_count) {
		struct ocfs2_refcount_rec tmp_rec;
		u64 cpos = FUNC7(orig_rec->r_cpos);
		len = FUNC5(orig_rec->r_clusters);
		ret = FUNC12(handle, ci, ref_root_bh,
						 ref_leaf_bh, meta_ac);
		if (ret) {
			FUNC11(ret);
			goto out;
		}

		/*
		 * We have to re-get it since now cpos may be moved to
		 * another leaf block.
		 */
		ret = FUNC13(ci, ref_root_bh,
					     cpos, len, &tmp_rec, &index,
					     &new_bh);
		if (ret) {
			FUNC11(ret);
			goto out;
		}

		ref_leaf_bh = new_bh;
		rb = (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
		rf_list = &rb->rf_records;
		orig_rec = &rf_list->rl_recs[index];
	}

	ret = FUNC14(handle, ci, ref_leaf_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC11(ret);
		goto out;
	}

	/*
	 * We have calculated out how many new records we need and store
	 * in recs_need, so spare enough space first by moving the records
	 * after "index" to the end.
	 */
	if (index != FUNC4(rf_list->rl_used) - 1)
		FUNC9(&rf_list->rl_recs[index + 1 + recs_need],
			&rf_list->rl_recs[index + 1],
			(FUNC4(rf_list->rl_used) - index - 1) *
			 sizeof(struct ocfs2_refcount_rec));

	len = (FUNC7(orig_rec->r_cpos) +
	      FUNC5(orig_rec->r_clusters)) -
	      (FUNC7(split_rec->r_cpos) +
	      FUNC5(split_rec->r_clusters));

	/*
	 * If we have "len", the we will split in the tail and move it
	 * to the end of the space we have just spared.
	 */
	if (len) {
		tail_rec = &rf_list->rl_recs[index + recs_need];

		FUNC8(tail_rec, orig_rec, sizeof(struct ocfs2_refcount_rec));
		FUNC6(&tail_rec->r_cpos,
			     FUNC5(tail_rec->r_clusters) - len);
		tail_rec->r_clusters = FUNC5(len);
	}

	/*
	 * If the split pos isn't the same as the original one, we need to
	 * split in the head.
	 *
	 * Note: We have the chance that split_rec.r_refcount = 0,
	 * recs_need = 0 and len > 0, which means we just cut the head from
	 * the orig_rec and in that case we have done some modification in
	 * orig_rec above, so the check for r_cpos is faked.
	 */
	if (split_rec->r_cpos != orig_rec->r_cpos && tail_rec != orig_rec) {
		len = FUNC7(split_rec->r_cpos) -
		      FUNC7(orig_rec->r_cpos);
		orig_rec->r_clusters = FUNC2(len);
		index++;
	}

	FUNC3(&rf_list->rl_used, recs_need);

	if (split_rec->r_refcount) {
		rf_list->rl_recs[index] = *split_rec;
		FUNC10(0, "insert refcount record start %llu, len %u, count %u "
		     "to leaf block %llu at index %d\n",
		     (unsigned long long)FUNC7(split_rec->r_cpos),
		     FUNC5(split_rec->r_clusters),
		     FUNC5(split_rec->r_refcount),
		     (unsigned long long)ref_leaf_bh->b_blocknr, index);

		if (merge)
			FUNC16(rb, index);
	}

	ret = FUNC15(handle, ref_leaf_bh);
	if (ret)
		FUNC11(ret);

out:
	FUNC1(new_bh);
	return ret;
}