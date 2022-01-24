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
typedef  unsigned int u32 ;
struct ocfs2_extent_rec {int e_flags; int /*<<< orphan*/  e_cpos; scalar_t__ e_leaf_clusters; } ;
struct ocfs2_extent_list {scalar_t__ l_next_free_rec; struct ocfs2_extent_rec* l_recs; scalar_t__ l_tree_depth; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; scalar_t__ h_next_leaf_blk; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {scalar_t__ b_data; scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int OCFS2_EXT_REFCOUNTED ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct ocfs2_extent_list*,unsigned int,struct buffer_head**) ; 
 scalar_t__ FUNC13 (struct ocfs2_extent_rec*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 

__attribute__((used)) static int FUNC15(struct inode *inode,
					   struct ocfs2_extent_list *el,
					   u32 cpos,
					   u32 write_len,
					   u32 max_cpos,
					   u32 *cow_start,
					   u32 *cow_len)
{
	int ret = 0;
	int tree_height = FUNC3(el->l_tree_depth), i;
	struct buffer_head *eb_bh = NULL;
	struct ocfs2_extent_block *eb = NULL;
	struct ocfs2_extent_rec *rec;
	unsigned int want_clusters, rec_end = 0;
	int contig_clusters = FUNC10(inode->i_sb);
	int leaf_clusters;

	FUNC0(cpos + write_len > max_cpos);

	if (tree_height > 0) {
		ret = FUNC12(FUNC1(inode), el, cpos, &eb_bh);
		if (ret) {
			FUNC7(ret);
			goto out;
		}

		eb = (struct ocfs2_extent_block *) eb_bh->b_data;
		el = &eb->h_list;

		if (el->l_tree_depth) {
			FUNC11(inode->i_sb,
				    "Inode %lu has non zero tree depth in "
				    "leaf block %llu\n", inode->i_ino,
				    (unsigned long long)eb_bh->b_blocknr);
			ret = -EROFS;
			goto out;
		}
	}

	*cow_len = 0;
	for (i = 0; i < FUNC3(el->l_next_free_rec); i++) {
		rec = &el->l_recs[i];

		if (FUNC13(rec)) {
			FUNC6(i != 0, "Inode %lu has empty record in "
					"index %d\n", inode->i_ino, i);
			continue;
		}

		if (FUNC4(rec->e_cpos) +
		    FUNC3(rec->e_leaf_clusters) <= cpos)
			continue;

		if (*cow_len == 0) {
			/*
			 * We should find a refcounted record in the
			 * first pass.
			 */
			FUNC0(!(rec->e_flags & OCFS2_EXT_REFCOUNTED));
			*cow_start = FUNC4(rec->e_cpos);
		}

		/*
		 * If we encounter a hole, a non-refcounted record or
		 * pass the max_cpos, stop the search.
		 */
		if ((!(rec->e_flags & OCFS2_EXT_REFCOUNTED)) ||
		    (*cow_len && rec_end != FUNC4(rec->e_cpos)) ||
		    (max_cpos <= FUNC4(rec->e_cpos)))
			break;

		leaf_clusters = FUNC3(rec->e_leaf_clusters);
		rec_end = FUNC4(rec->e_cpos) + leaf_clusters;
		if (rec_end > max_cpos) {
			rec_end = max_cpos;
			leaf_clusters = rec_end - FUNC4(rec->e_cpos);
		}

		/*
		 * How many clusters do we actually need from
		 * this extent?  First we see how many we actually
		 * need to complete the write.  If that's smaller
		 * than contig_clusters, we try for contig_clusters.
		 */
		if (!*cow_len)
			want_clusters = write_len;
		else
			want_clusters = (cpos + write_len) -
				(*cow_start + *cow_len);
		if (want_clusters < contig_clusters)
			want_clusters = contig_clusters;

		/*
		 * If the write does not cover the whole extent, we
		 * need to calculate how we're going to split the extent.
		 * We try to do it on contig_clusters boundaries.
		 *
		 * Any extent smaller than contig_clusters will be
		 * CoWed in its entirety.
		 */
		if (leaf_clusters <= contig_clusters)
			*cow_len += leaf_clusters;
		else if (*cow_len || (*cow_start == cpos)) {
			/*
			 * This extent needs to be CoW'd from its
			 * beginning, so all we have to do is compute
			 * how many clusters to grab.  We align
			 * want_clusters to the edge of contig_clusters
			 * to get better I/O.
			 */
			want_clusters = FUNC8(inode->i_sb,
							       want_clusters);

			if (leaf_clusters < want_clusters)
				*cow_len += leaf_clusters;
			else
				*cow_len += want_clusters;
		} else if ((*cow_start + contig_clusters) >=
			   (cpos + write_len)) {
			/*
			 * Breaking off contig_clusters at the front
			 * of the extent will cover our write.  That's
			 * easy.
			 */
			*cow_len = contig_clusters;
		} else if ((rec_end - cpos) <= contig_clusters) {
			/*
			 * Breaking off contig_clusters at the tail of
			 * this extent will cover cpos.
			 */
			*cow_start = rec_end - contig_clusters;
			*cow_len = contig_clusters;
		} else if ((rec_end - cpos) <= want_clusters) {
			/*
			 * While we can't fit the entire write in this
			 * extent, we know that the write goes from cpos
			 * to the end of the extent.  Break that off.
			 * We try to break it at some multiple of
			 * contig_clusters from the front of the extent.
			 * Failing that (ie, cpos is within
			 * contig_clusters of the front), we'll CoW the
			 * entire extent.
			 */
			*cow_start = FUNC9(inode->i_sb,
							   *cow_start, cpos);
			*cow_len = rec_end - *cow_start;
		} else {
			/*
			 * Ok, the entire write lives in the middle of
			 * this extent.  Let's try to slice the extent up
			 * nicely.  Optimally, our CoW region starts at
			 * m*contig_clusters from the beginning of the
			 * extent and goes for n*contig_clusters,
			 * covering the entire write.
			 */
			*cow_start = FUNC9(inode->i_sb,
							   *cow_start, cpos);

			want_clusters = (cpos + write_len) - *cow_start;
			want_clusters = FUNC8(inode->i_sb,
							       want_clusters);
			if (*cow_start + want_clusters <= rec_end)
				*cow_len = want_clusters;
			else
				*cow_len = rec_end - *cow_start;
		}

		/* Have we covered our entire write yet? */
		if ((*cow_start + *cow_len) >= (cpos + write_len))
			break;

		/*
		 * If we reach the end of the extent block and don't get enough
		 * clusters, continue with the next extent block if possible.
		 */
		if (i + 1 == FUNC3(el->l_next_free_rec) &&
		    eb && eb->h_next_leaf_blk) {
			FUNC2(eb_bh);
			eb_bh = NULL;

			ret = FUNC14(FUNC1(inode),
					       FUNC5(eb->h_next_leaf_blk),
					       &eb_bh);
			if (ret) {
				FUNC7(ret);
				goto out;
			}

			eb = (struct ocfs2_extent_block *) eb_bh->b_data;
			el = &eb->h_list;
			i = -1;
		}
	}

out:
	FUNC2(eb_bh);
	return ret;
}