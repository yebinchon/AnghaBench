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
typedef  int u32 ;
struct ocfs2_refcount_rec {int dummy; } ;
struct ocfs2_refcount_list {void* rl_used; int /*<<< orphan*/ * rl_recs; void* rl_count; } ;
struct ocfs2_refcount_block {void* rf_cpos; struct ocfs2_refcount_list rf_records; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmp_refcount_rec_by_cpos ; 
 int /*<<< orphan*/  cmp_refcount_rec_by_low_cpos ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct ocfs2_refcount_list*,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swap_refcount_rec ; 

__attribute__((used)) static int FUNC10(struct buffer_head *ref_leaf_bh,
					    struct buffer_head *new_bh,
					    u32 *split_cpos)
{
	int split_index = 0, num_moved, ret;
	u32 cpos = 0;
	struct ocfs2_refcount_block *rb =
			(struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
	struct ocfs2_refcount_list *rl = &rb->rf_records;
	struct ocfs2_refcount_block *new_rb =
			(struct ocfs2_refcount_block *)new_bh->b_data;
	struct ocfs2_refcount_list *new_rl = &new_rb->rf_records;

	FUNC6(0, "split old leaf refcount block %llu, count = %u, used = %u\n",
	     (unsigned long long)ref_leaf_bh->b_blocknr,
	     FUNC3(rl->rl_count), FUNC3(rl->rl_used));

	/*
	 * XXX: Improvement later.
	 * If we know all the high 32 bit cpos is the same, no need to sort.
	 *
	 * In order to make the whole process safe, we do:
	 * 1. sort the entries by their low 32 bit cpos first so that we can
	 *    find the split cpos easily.
	 * 2. call ocfs2_insert_extent to insert the new refcount block.
	 * 3. move the refcount rec to the new block.
	 * 4. sort the entries by their 64 bit cpos.
	 * 5. dirty the new_rb and rb.
	 */
	FUNC9(&rl->rl_recs, FUNC2(rl->rl_used),
	     sizeof(struct ocfs2_refcount_rec),
	     cmp_refcount_rec_by_low_cpos, swap_refcount_rec);

	ret = FUNC8(rl, &cpos, &split_index);
	if (ret) {
		FUNC7(ret);
		return ret;
	}

	new_rb->rf_cpos = FUNC0(cpos);

	/* move refcount records starting from split_index to the new block. */
	num_moved = FUNC2(rl->rl_used) - split_index;
	FUNC4(new_rl->rl_recs, &rl->rl_recs[split_index],
	       num_moved * sizeof(struct ocfs2_refcount_rec));

	/*ok, remove the entries we just moved over to the other block. */
	FUNC5(&rl->rl_recs[split_index], 0,
	       num_moved * sizeof(struct ocfs2_refcount_rec));

	/* change old and new rl_used accordingly. */
	FUNC1(&rl->rl_used, -num_moved);
	new_rl->rl_used = FUNC0(num_moved);

	FUNC9(&rl->rl_recs, FUNC2(rl->rl_used),
	     sizeof(struct ocfs2_refcount_rec),
	     cmp_refcount_rec_by_cpos, swap_refcount_rec);

	FUNC9(&new_rl->rl_recs, FUNC2(new_rl->rl_used),
	     sizeof(struct ocfs2_refcount_rec),
	     cmp_refcount_rec_by_cpos, swap_refcount_rec);

	*split_cpos = cpos;
	return 0;
}