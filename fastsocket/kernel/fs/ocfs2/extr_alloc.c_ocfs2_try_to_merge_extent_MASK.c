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
struct ocfs2_path {int dummy; } ;
struct ocfs2_merge_ctxt {scalar_t__ c_contig_type; scalar_t__ c_split_covers_rec; scalar_t__ c_has_empty_extent; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CONTIG_LEFTRIGHT ; 
 scalar_t__ CONTIG_NONE ; 
 scalar_t__ CONTIG_RIGHT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_extent_rec*) ; 
 int FUNC3 (struct ocfs2_path*,int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_cached_dealloc_ctxt*,int) ; 
 int FUNC4 (struct ocfs2_path*,int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*) ; 
 struct ocfs2_extent_list* FUNC6 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC7(handle_t *handle,
				     struct ocfs2_extent_tree *et,
				     struct ocfs2_path *path,
				     int split_index,
				     struct ocfs2_extent_rec *split_rec,
				     struct ocfs2_cached_dealloc_ctxt *dealloc,
				     struct ocfs2_merge_ctxt *ctxt)
{
	int ret = 0;
	struct ocfs2_extent_list *el = FUNC6(path);
	struct ocfs2_extent_rec *rec = &el->l_recs[split_index];

	FUNC0(ctxt->c_contig_type == CONTIG_NONE);

	if (ctxt->c_split_covers_rec && ctxt->c_has_empty_extent) {
		/*
		 * The merge code will need to create an empty
		 * extent to take the place of the newly
		 * emptied slot. Remove any pre-existing empty
		 * extents - having more than one in a leaf is
		 * illegal.
		 */
		ret = FUNC5(handle, et, path, dealloc);
		if (ret) {
			FUNC1(ret);
			goto out;
		}
		split_index--;
		rec = &el->l_recs[split_index];
	}

	if (ctxt->c_contig_type == CONTIG_LEFTRIGHT) {
		/*
		 * Left-right contig implies this.
		 */
		FUNC0(!ctxt->c_split_covers_rec);

		/*
		 * Since the leftright insert always covers the entire
		 * extent, this call will delete the insert record
		 * entirely, resulting in an empty extent record added to
		 * the extent block.
		 *
		 * Since the adding of an empty extent shifts
		 * everything back to the right, there's no need to
		 * update split_index here.
		 *
		 * When the split_index is zero, we need to merge it to the
		 * prevoius extent block. It is more efficient and easier
		 * if we do merge_right first and merge_left later.
		 */
		ret = FUNC4(path, handle, et, split_rec,
					    split_index);
		if (ret) {
			FUNC1(ret);
			goto out;
		}

		/*
		 * We can only get this from logic error above.
		 */
		FUNC0(!FUNC2(&el->l_recs[0]));

		/* The merge left us with an empty extent, remove it. */
		ret = FUNC5(handle, et, path, dealloc);
		if (ret) {
			FUNC1(ret);
			goto out;
		}

		rec = &el->l_recs[split_index];

		/*
		 * Note that we don't pass split_rec here on purpose -
		 * we've merged it into the rec already.
		 */
		ret = FUNC3(path, handle, et, rec,
					   dealloc, split_index);

		if (ret) {
			FUNC1(ret);
			goto out;
		}

		ret = FUNC5(handle, et, path, dealloc);
		/*
		 * Error from this last rotate is not critical, so
		 * print but don't bubble it up.
		 */
		if (ret)
			FUNC1(ret);
		ret = 0;
	} else {
		/*
		 * Merge a record to the left or right.
		 *
		 * 'contig_type' is relative to the existing record,
		 * so for example, if we're "right contig", it's to
		 * the record on the left (hence the left merge).
		 */
		if (ctxt->c_contig_type == CONTIG_RIGHT) {
			ret = FUNC3(path, handle, et,
						   split_rec, dealloc,
						   split_index);
			if (ret) {
				FUNC1(ret);
				goto out;
			}
		} else {
			ret = FUNC4(path, handle,
						    et, split_rec,
						    split_index);
			if (ret) {
				FUNC1(ret);
				goto out;
			}
		}

		if (ctxt->c_split_covers_rec) {
			/*
			 * The merge may have left an empty extent in
			 * our leaf. Try to rotate it away.
			 */
			ret = FUNC5(handle, et, path,
						     dealloc);
			if (ret)
				FUNC1(ret);
			ret = 0;
		}
	}

out:
	return ret;
}