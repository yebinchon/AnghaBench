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
struct ocfs2_extent_rec {unsigned int e_flags; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; scalar_t__ l_tree_depth; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct ocfs2_extent_list*,scalar_t__,struct buffer_head**) ; 
 scalar_t__ FUNC9 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 
 int FUNC10 (struct ocfs2_extent_list*,scalar_t__) ; 

int FUNC11(struct inode *inode, u32 v_cluster,
			     u32 *p_cluster, u32 *num_clusters,
			     struct ocfs2_extent_list *el,
			     unsigned int *extent_flags)
{
	int ret = 0, i;
	struct buffer_head *eb_bh = NULL;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_rec *rec;
	u32 coff;

	if (el->l_tree_depth) {
		ret = FUNC8(FUNC1(inode), el, v_cluster,
				      &eb_bh);
		if (ret) {
			FUNC5(ret);
			goto out;
		}

		eb = (struct ocfs2_extent_block *) eb_bh->b_data;
		el = &eb->h_list;

		if (el->l_tree_depth) {
			FUNC7(inode->i_sb,
				    "Inode %lu has non zero tree depth in "
				    "xattr leaf block %llu\n", inode->i_ino,
				    (unsigned long long)eb_bh->b_blocknr);
			ret = -EROFS;
			goto out;
		}
	}

	i = FUNC10(el, v_cluster);
	if (i == -1) {
		ret = -EROFS;
		FUNC5(ret);
		goto out;
	} else {
		rec = &el->l_recs[i];
		FUNC0(v_cluster < FUNC3(rec->e_cpos));

		if (!rec->e_blkno) {
			FUNC7(inode->i_sb, "Inode %lu has bad extent "
				    "record (%u, %u, 0) in xattr", inode->i_ino,
				    FUNC3(rec->e_cpos),
				    FUNC9(el, rec));
			ret = -EROFS;
			goto out;
		}
		coff = v_cluster - FUNC3(rec->e_cpos);
		*p_cluster = FUNC6(inode->i_sb,
						    FUNC4(rec->e_blkno));
		*p_cluster = *p_cluster + coff;
		if (num_clusters)
			*num_clusters = FUNC9(el, rec) - coff;

		if (extent_flags)
			*extent_flags = rec->e_flags;
	}
out:
	if (eb_bh)
		FUNC2(eb_bh);
	return ret;
}