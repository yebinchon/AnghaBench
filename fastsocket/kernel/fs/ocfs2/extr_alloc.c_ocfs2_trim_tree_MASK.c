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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct ocfs2_truncate_context {int /*<<< orphan*/  tc_dealloc; } ;
struct ocfs2_path {int p_tree_depth; TYPE_1__* p_node; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_int_clusters; int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_flags; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; int /*<<< orphan*/  l_tree_depth; } ;
struct ocfs2_extent_block {int /*<<< orphan*/  h_blkno; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {scalar_t__ b_data; scalar_t__ b_blocknr; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct ocfs2_extent_list* el; struct buffer_head* bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_extent_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct ocfs2_extent_block*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ FUNC15 (struct ocfs2_extent_rec*) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC17 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static int FUNC19(struct inode *inode, struct ocfs2_path *path,
			   handle_t *handle, struct ocfs2_truncate_context *tc,
			   u32 clusters_to_del, u64 *delete_start, u8 *flags)
{
	int ret, i, index = path->p_tree_depth;
	u32 new_edge = 0;
	u64 deleted_eb = 0;
	struct buffer_head *bh;
	struct ocfs2_extent_list *el;
	struct ocfs2_extent_rec *rec;

	*delete_start = 0;
	*flags = 0;

	while (index >= 0) {
		bh = path->p_node[index].bh;
		el = path->p_node[index].el;

		FUNC10(0, "traveling tree (index = %d, block = %llu)\n",
		     index,  (unsigned long long)bh->b_blocknr);

		FUNC0(FUNC5(el->l_next_free_rec) == 0);

		if (index !=
		    (path->p_tree_depth - FUNC5(el->l_tree_depth))) {
			FUNC14(inode->i_sb,
				    "Inode %lu has invalid ext. block %llu",
				    inode->i_ino,
				    (unsigned long long)bh->b_blocknr);
			ret = -EROFS;
			goto out;
		}

find_tail_record:
		i = FUNC5(el->l_next_free_rec) - 1;
		rec = &el->l_recs[i];

		FUNC10(0, "Extent list before: record %d: (%u, %u, %llu), "
		     "next = %u\n", i, FUNC7(rec->e_cpos),
		     FUNC17(el, rec),
		     (unsigned long long)FUNC8(rec->e_blkno),
		     FUNC5(el->l_next_free_rec));

		FUNC0(FUNC17(el, rec) < clusters_to_del);

		if (FUNC5(el->l_tree_depth) == 0) {
			/*
			 * If the leaf block contains a single empty
			 * extent and no records, we can just remove
			 * the block.
			 */
			if (i == 0 && FUNC15(rec)) {
				FUNC9(rec, 0,
				       sizeof(struct ocfs2_extent_rec));
				el->l_next_free_rec = FUNC2(0);

				goto delete;
			}

			/*
			 * Remove any empty extents by shifting things
			 * left. That should make life much easier on
			 * the code below. This condition is rare
			 * enough that we shouldn't see a performance
			 * hit.
			 */
			if (FUNC15(&el->l_recs[0])) {
				FUNC4(&el->l_next_free_rec, -1);

				for(i = 0;
				    i < FUNC5(el->l_next_free_rec); i++)
					el->l_recs[i] = el->l_recs[i + 1];

				FUNC9(&el->l_recs[i], 0,
				       sizeof(struct ocfs2_extent_rec));

				/*
				 * We've modified our extent list. The
				 * simplest way to handle this change
				 * is to being the search from the
				 * start again.
				 */
				goto find_tail_record;
			}

			FUNC4(&rec->e_leaf_clusters, -clusters_to_del);

			/*
			 * We'll use "new_edge" on our way back up the
			 * tree to know what our rightmost cpos is.
			 */
			new_edge = FUNC5(rec->e_leaf_clusters);
			new_edge += FUNC7(rec->e_cpos);

			/*
			 * The caller will use this to delete data blocks.
			 */
			*delete_start = FUNC8(rec->e_blkno)
				+ FUNC13(inode->i_sb,
					FUNC5(rec->e_leaf_clusters));
			*flags = rec->e_flags;

			/*
			 * If it's now empty, remove this record.
			 */
			if (FUNC5(rec->e_leaf_clusters) == 0) {
				FUNC9(rec, 0,
				       sizeof(struct ocfs2_extent_rec));
				FUNC4(&el->l_next_free_rec, -1);
			}
		} else {
			if (FUNC8(rec->e_blkno) == deleted_eb) {
				FUNC9(rec, 0,
				       sizeof(struct ocfs2_extent_rec));
				FUNC4(&el->l_next_free_rec, -1);

				goto delete;
			}

			/* Can this actually happen? */
			if (FUNC5(el->l_next_free_rec) == 0)
				goto delete;

			/*
			 * We never actually deleted any clusters
			 * because our leaf was empty. There's no
			 * reason to adjust the rightmost edge then.
			 */
			if (new_edge == 0)
				goto delete;

			rec->e_int_clusters = FUNC3(new_edge);
			FUNC6(&rec->e_int_clusters,
				     -FUNC7(rec->e_cpos));

			 /*
			  * A deleted child record should have been
			  * caught above.
			  */
			 FUNC0(FUNC7(rec->e_int_clusters) == 0);
		}

delete:
		ret = FUNC16(handle, bh);
		if (ret) {
			FUNC11(ret);
			goto out;
		}

		FUNC10(0, "extent list container %llu, after: record %d: "
		     "(%u, %u, %llu), next = %u.\n",
		     (unsigned long long)bh->b_blocknr, i,
		     FUNC7(rec->e_cpos), FUNC17(el, rec),
		     (unsigned long long)FUNC8(rec->e_blkno),
		     FUNC5(el->l_next_free_rec));

		/*
		 * We must be careful to only attempt delete of an
		 * extent block (and not the root inode block).
		 */
		if (index > 0 && FUNC5(el->l_next_free_rec) == 0) {
			struct ocfs2_extent_block *eb =
				(struct ocfs2_extent_block *)bh->b_data;

			/*
			 * Save this for use when processing the
			 * parent block.
			 */
			deleted_eb = FUNC8(eb->h_blkno);

			FUNC10(0, "deleting this extent block.\n");

			FUNC18(FUNC1(inode), bh);

			FUNC0(FUNC17(el, &el->l_recs[0]));
			FUNC0(FUNC7(el->l_recs[0].e_cpos));
			FUNC0(FUNC8(el->l_recs[0].e_blkno));

			ret = FUNC12(&tc->tc_dealloc, eb);
			/* An error here is not fatal. */
			if (ret < 0)
				FUNC11(ret);
		} else {
			deleted_eb = 0;
		}

		index--;
	}

	ret = 0;
out:
	return ret;
}