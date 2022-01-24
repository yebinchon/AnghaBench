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
typedef  scalar_t__ u32 ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int EROFS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC11 (struct ocfs2_extent_tree*) ; 
 scalar_t__ FUNC12 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_path*,int) ; 
 int FUNC14 (struct ocfs2_extent_list*,scalar_t__) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,int,scalar_t__,struct ocfs2_alloc_context*) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,int,struct ocfs2_cached_dealloc_ctxt*,scalar_t__,scalar_t__) ; 
 struct ocfs2_extent_list* FUNC17 (struct ocfs2_path*) ; 

int FUNC18(handle_t *handle,
			struct ocfs2_extent_tree *et,
			u32 cpos, u32 len,
			struct ocfs2_alloc_context *meta_ac,
			struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret, index;
	u32 rec_range, trunc_range;
	struct ocfs2_extent_rec *rec;
	struct ocfs2_extent_list *el;
	struct ocfs2_path *path = NULL;

	/*
	 * XXX: Why are we truncating to 0 instead of wherever this
	 * affects us?
	 */
	FUNC6(et, 0);

	path = FUNC11(et);
	if (!path) {
		ret = -ENOMEM;
		FUNC4(ret);
		goto out;
	}

	ret = FUNC7(et->et_ci, path, cpos);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	el = FUNC17(path);
	index = FUNC14(el, cpos);
	if (index == -1 || index >= FUNC1(el->l_next_free_rec)) {
		FUNC5(FUNC9(et->et_ci),
			    "Owner %llu has an extent at cpos %u which can no "
			    "longer be found.\n",
			    (unsigned long long)FUNC10(et->et_ci),
			    cpos);
		ret = -EROFS;
		goto out;
	}

	/*
	 * We have 3 cases of extent removal:
	 *   1) Range covers the entire extent rec
	 *   2) Range begins or ends on one edge of the extent rec
	 *   3) Range is in the middle of the extent rec (no shared edges)
	 *
	 * For case 1 we remove the extent rec and left rotate to
	 * fill the hole.
	 *
	 * For case 2 we just shrink the existing extent rec, with a
	 * tree update if the shrinking edge is also the edge of an
	 * extent block.
	 *
	 * For case 3 we do a right split to turn the extent rec into
	 * something case 2 can handle.
	 */
	rec = &el->l_recs[index];
	rec_range = FUNC2(rec->e_cpos) + FUNC12(el, rec);
	trunc_range = cpos + len;

	FUNC0(cpos < FUNC2(rec->e_cpos) || trunc_range > rec_range);

	FUNC3(0, "Owner %llu, remove (cpos %u, len %u). Existing index %d "
	     "(cpos %u, len %u)\n",
	     (unsigned long long)FUNC10(et->et_ci),
	     cpos, len, index,
	     FUNC2(rec->e_cpos), FUNC12(el, rec));

	if (FUNC2(rec->e_cpos) == cpos || rec_range == trunc_range) {
		ret = FUNC16(handle, et, path, index, dealloc,
					 cpos, len);
		if (ret) {
			FUNC4(ret);
			goto out;
		}
	} else {
		ret = FUNC15(handle, et, path, index,
				       trunc_range, meta_ac);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		/*
		 * The split could have manipulated the tree enough to
		 * move the record location, so we have to look for it again.
		 */
		FUNC13(path, 1);

		ret = FUNC7(et->et_ci, path, cpos);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		el = FUNC17(path);
		index = FUNC14(el, cpos);
		if (index == -1 || index >= FUNC1(el->l_next_free_rec)) {
			FUNC5(FUNC9(et->et_ci),
				    "Owner %llu: split at cpos %u lost record.",
				    (unsigned long long)FUNC10(et->et_ci),
				    cpos);
			ret = -EROFS;
			goto out;
		}

		/*
		 * Double check our values here. If anything is fishy,
		 * it's easier to catch it at the top level.
		 */
		rec = &el->l_recs[index];
		rec_range = FUNC2(rec->e_cpos) +
			FUNC12(el, rec);
		if (rec_range != trunc_range) {
			FUNC5(FUNC9(et->et_ci),
				    "Owner %llu: error after split at cpos %u"
				    "trunc len %u, existing record is (%u,%u)",
				    (unsigned long long)FUNC10(et->et_ci),
				    cpos, len, FUNC2(rec->e_cpos),
				    FUNC12(el, rec));
			ret = -EROFS;
			goto out;
		}

		ret = FUNC16(handle, et, path, index, dealloc,
					 cpos, len);
		if (ret) {
			FUNC4(ret);
			goto out;
		}
	}

out:
	FUNC8(path);
	return ret;
}