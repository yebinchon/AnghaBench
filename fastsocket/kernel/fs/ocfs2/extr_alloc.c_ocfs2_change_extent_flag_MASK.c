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
struct super_block {int dummy; } ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int e_flags; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_extent_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_path*) ; 
 struct super_block* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC13 (struct ocfs2_extent_tree*) ; 
 int FUNC14 (struct ocfs2_extent_list*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,int,struct ocfs2_extent_rec*,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 struct ocfs2_extent_list* FUNC16 (struct ocfs2_path*) ; 

int FUNC17(handle_t *handle,
			     struct ocfs2_extent_tree *et,
			     u32 cpos, u32 len, u32 phys,
			     struct ocfs2_alloc_context *meta_ac,
			     struct ocfs2_cached_dealloc_ctxt *dealloc,
			     int new_flags, int clear_flags)
{
	int ret, index;
	struct super_block *sb = FUNC11(et->et_ci);
	u64 start_blkno = FUNC7(sb, phys);
	struct ocfs2_extent_rec split_rec;
	struct ocfs2_path *left_path = NULL;
	struct ocfs2_extent_list *el;
	struct ocfs2_extent_rec *rec;

	left_path = FUNC13(et);
	if (!left_path) {
		ret = -ENOMEM;
		FUNC6(ret);
		goto out;
	}

	ret = FUNC9(et->et_ci, left_path, cpos);
	if (ret) {
		FUNC6(ret);
		goto out;
	}
	el = FUNC16(left_path);

	index = FUNC14(el, cpos);
	if (index == -1 || index >= FUNC3(el->l_next_free_rec)) {
		FUNC8(sb,
			    "Owner %llu has an extent at cpos %u which can no "
			    "longer be found.\n",
			     (unsigned long long)
			     FUNC12(et->et_ci), cpos);
		ret = -EROFS;
		goto out;
	}

	ret = -EIO;
	rec = &el->l_recs[index];
	if (new_flags && (rec->e_flags & new_flags)) {
		FUNC5(ML_ERROR, "Owner %llu tried to set %d flags on an "
		     "extent that already had them",
		     (unsigned long long)FUNC12(et->et_ci),
		     new_flags);
		goto out;
	}

	if (clear_flags && !(rec->e_flags & clear_flags)) {
		FUNC5(ML_ERROR, "Owner %llu tried to clear %d flags on an "
		     "extent that didn't have them",
		     (unsigned long long)FUNC12(et->et_ci),
		     clear_flags);
		goto out;
	}

	FUNC4(&split_rec, 0, sizeof(struct ocfs2_extent_rec));
	split_rec.e_cpos = FUNC1(cpos);
	split_rec.e_leaf_clusters = FUNC0(len);
	split_rec.e_blkno = FUNC2(start_blkno);
	split_rec.e_flags = rec->e_flags;
	if (new_flags)
		split_rec.e_flags |= new_flags;
	if (clear_flags)
		split_rec.e_flags &= ~clear_flags;

	ret = FUNC15(handle, et, left_path,
				 index, &split_rec, meta_ac,
				 dealloc);
	if (ret)
		FUNC6(ret);

out:
	FUNC10(left_path);
	return ret;

}