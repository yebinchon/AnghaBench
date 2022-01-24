#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_path {int /*<<< orphan*/  p_tree_depth; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_leaf_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_extent_block {int /*<<< orphan*/  h_blkno; struct ocfs2_extent_list h_list; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned int ip_clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_extent_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC12 (struct ocfs2_extent_rec*) ; 
 struct ocfs2_extent_list* FUNC13 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC15(struct inode *inode,
				       unsigned int clusters_to_del,
				       struct ocfs2_path *path,
				       struct buffer_head **new_last_eb)
{
	int next_free, ret = 0;
	u32 cpos;
	struct ocfs2_extent_rec *rec;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_list *el;
	struct buffer_head *bh = NULL;

	*new_last_eb = NULL;

	/* we have no tree, so of course, no last_eb. */
	if (!path->p_tree_depth)
		goto out;

	/* trunc to zero special case - this makes tree_depth = 0
	 * regardless of what it is.  */
	if (FUNC2(inode)->ip_clusters == clusters_to_del)
		goto out;

	el = FUNC13(path);
	FUNC0(!el->l_next_free_rec);

	/*
	 * Make sure that this extent list will actually be empty
	 * after we clear away the data. We can shortcut out if
	 * there's more than one non-empty extent in the
	 * list. Otherwise, a check of the remaining extent is
	 * necessary.
	 */
	next_free = FUNC6(el->l_next_free_rec);
	rec = NULL;
	if (FUNC12(&el->l_recs[0])) {
		if (next_free > 2)
			goto out;

		/* We may have a valid extent in index 1, check it. */
		if (next_free == 2)
			rec = &el->l_recs[1];

		/*
		 * Fall through - no more nonempty extents, so we want
		 * to delete this leaf.
		 */
	} else {
		if (next_free > 1)
			goto out;

		rec = &el->l_recs[0];
	}

	if (rec) {
		/*
		 * Check it we'll only be trimming off the end of this
		 * cluster.
		 */
		if (FUNC6(rec->e_leaf_clusters) > clusters_to_del)
			goto out;
	}

	ret = FUNC10(inode->i_sb, path, &cpos);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	ret = FUNC11(FUNC1(inode), FUNC14(path), cpos, &bh);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	eb = (struct ocfs2_extent_block *) bh->b_data;
	el = &eb->h_list;

	/* ocfs2_find_leaf() gets the eb from ocfs2_read_extent_block().
	 * Any corruption is a code bug. */
	FUNC0(!FUNC3(eb));

	*new_last_eb = bh;
	FUNC5(*new_last_eb);
	FUNC8(0, "returning block %llu, (cpos: %u)\n",
	     (unsigned long long)FUNC7(eb->h_blkno), cpos);
out:
	FUNC4(bh);

	return ret;
}