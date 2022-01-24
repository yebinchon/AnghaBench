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
struct super_block {int dummy; } ;
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {scalar_t__ e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; int /*<<< orphan*/  l_count; } ;
struct ocfs2_extent_block {int /*<<< orphan*/  h_blkno; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  enum ocfs2_contig_type { ____Placeholder_ocfs2_contig_type } ocfs2_contig_type ;

/* Variables and functions */
 int CONTIG_LEFT ; 
 int CONTIG_LEFTRIGHT ; 
 int CONTIG_NONE ; 
 int CONTIG_RIGHT ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,unsigned long long,int,...) ; 
 int FUNC3 (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ; 
 int FUNC4 (struct super_block*,struct ocfs2_path*,scalar_t__*) ; 
 int FUNC5 (struct super_block*,struct ocfs2_path*,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_path*) ; 
 scalar_t__ FUNC8 (struct ocfs2_extent_rec*) ; 
 struct super_block* FUNC9 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC10 (struct ocfs2_path*) ; 
 struct buffer_head* FUNC11 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC12 (struct ocfs2_path*) ; 

__attribute__((used)) static enum ocfs2_contig_type
FUNC13(struct ocfs2_extent_tree *et,
			       struct ocfs2_path *path,
			       struct ocfs2_extent_list *el, int index,
			       struct ocfs2_extent_rec *split_rec)
{
	int status;
	enum ocfs2_contig_type ret = CONTIG_NONE;
	u32 left_cpos, right_cpos;
	struct ocfs2_extent_rec *rec = NULL;
	struct ocfs2_extent_list *new_el;
	struct ocfs2_path *left_path = NULL, *right_path = NULL;
	struct buffer_head *bh;
	struct ocfs2_extent_block *eb;
	struct super_block *sb = FUNC9(et->et_ci);

	if (index > 0) {
		rec = &el->l_recs[index - 1];
	} else if (path->p_tree_depth > 0) {
		status = FUNC4(sb, path, &left_cpos);
		if (status)
			goto out;

		if (left_cpos != 0) {
			left_path = FUNC10(path);
			if (!left_path)
				goto out;

			status = FUNC6(et->et_ci, left_path,
						 left_cpos);
			if (status)
				goto out;

			new_el = FUNC12(left_path);

			if (FUNC0(new_el->l_next_free_rec) !=
			    FUNC0(new_el->l_count)) {
				bh = FUNC11(left_path);
				eb = (struct ocfs2_extent_block *)bh->b_data;
				FUNC2(sb,
					    "Extent block #%llu has an "
					    "invalid l_next_free_rec of "
					    "%d.  It should have "
					    "matched the l_count of %d",
					    (unsigned long long)FUNC1(eb->h_blkno),
					    FUNC0(new_el->l_next_free_rec),
					    FUNC0(new_el->l_count));
				status = -EINVAL;
				goto out;
			}
			rec = &new_el->l_recs[
				FUNC0(new_el->l_next_free_rec) - 1];
		}
	}

	/*
	 * We're careful to check for an empty extent record here -
	 * the merge code will know what to do if it sees one.
	 */
	if (rec) {
		if (index == 1 && FUNC8(rec)) {
			if (split_rec->e_cpos == el->l_recs[index].e_cpos)
				ret = CONTIG_RIGHT;
		} else {
			ret = FUNC3(et, rec, split_rec);
		}
	}

	rec = NULL;
	if (index < (FUNC0(el->l_next_free_rec) - 1))
		rec = &el->l_recs[index + 1];
	else if (FUNC0(el->l_next_free_rec) == FUNC0(el->l_count) &&
		 path->p_tree_depth > 0) {
		status = FUNC5(sb, path, &right_cpos);
		if (status)
			goto out;

		if (right_cpos == 0)
			goto out;

		right_path = FUNC10(path);
		if (!right_path)
			goto out;

		status = FUNC6(et->et_ci, right_path, right_cpos);
		if (status)
			goto out;

		new_el = FUNC12(right_path);
		rec = &new_el->l_recs[0];
		if (FUNC8(rec)) {
			if (FUNC0(new_el->l_next_free_rec) <= 1) {
				bh = FUNC11(right_path);
				eb = (struct ocfs2_extent_block *)bh->b_data;
				FUNC2(sb,
					    "Extent block #%llu has an "
					    "invalid l_next_free_rec of %d",
					    (unsigned long long)FUNC1(eb->h_blkno),
					    FUNC0(new_el->l_next_free_rec));
				status = -EINVAL;
				goto out;
			}
			rec = &new_el->l_recs[1];
		}
	}

	if (rec) {
		enum ocfs2_contig_type contig_type;

		contig_type = FUNC3(et, rec, split_rec);

		if (contig_type == CONTIG_LEFT && ret == CONTIG_RIGHT)
			ret = CONTIG_LEFTRIGHT;
		else if (ret == CONTIG_NONE)
			ret = contig_type;
	}

out:
	if (left_path)
		FUNC7(left_path);
	if (right_path)
		FUNC7(right_path);

	return ret;
}