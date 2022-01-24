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
struct ocfs2_refcount_rec {int /*<<< orphan*/  r_refcount; } ;
struct ocfs2_refcount_list {int /*<<< orphan*/  rl_used; struct ocfs2_refcount_rec* rl_recs; } ;
struct ocfs2_refcount_block {struct ocfs2_refcount_list rf_records; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_refcount_rec*,struct ocfs2_refcount_rec*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_refcount_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_refcount_block*,int) ; 

__attribute__((used)) static int FUNC11(handle_t *handle,
				     struct ocfs2_caching_info *ci,
				     struct buffer_head *ref_leaf_bh,
				     int index, int merge, int change)
{
	int ret;
	struct ocfs2_refcount_block *rb =
			(struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
	struct ocfs2_refcount_list *rl = &rb->rf_records;
	struct ocfs2_refcount_rec *rec = &rl->rl_recs[index];

	ret = FUNC8(handle, ci, ref_leaf_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	FUNC6(0, "change index %d, old count %u, change %d\n", index,
	     FUNC3(rec->r_refcount), change);
	FUNC2(&rec->r_refcount, change);

	if (!rec->r_refcount) {
		if (index != FUNC1(rl->rl_used) - 1) {
			FUNC4(rec, rec + 1,
				(FUNC1(rl->rl_used) - index - 1) *
				sizeof(struct ocfs2_refcount_rec));
			FUNC5(&rl->rl_recs[FUNC1(rl->rl_used) - 1],
			       0, sizeof(struct ocfs2_refcount_rec));
		}

		FUNC0(&rl->rl_used, -1);
	} else if (merge)
		FUNC10(rb, index);

	ret = FUNC9(handle, ref_leaf_bh);
	if (ret)
		FUNC7(ret);
out:
	return ret;
}