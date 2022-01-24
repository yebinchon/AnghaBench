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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_blkno; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; scalar_t__ l_tree_depth; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct ocfs2_extent_list*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
			       u32 name_hash,
			       u64 *p_blkno,
			       u32 *e_cpos,
			       u32 *num_clusters,
			       struct ocfs2_extent_list *el)
{
	int ret = 0, i;
	struct buffer_head *eb_bh = NULL;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_rec *rec = NULL;
	u64 e_blkno = 0;

	if (el->l_tree_depth) {
		ret = FUNC7(FUNC0(inode), el, name_hash,
				      &eb_bh);
		if (ret) {
			FUNC5(ret);
			goto out;
		}

		eb = (struct ocfs2_extent_block *) eb_bh->b_data;
		el = &eb->h_list;

		if (el->l_tree_depth) {
			FUNC6(inode->i_sb,
				    "Inode %lu has non zero tree depth in "
				    "xattr tree block %llu\n", inode->i_ino,
				    (unsigned long long)eb_bh->b_blocknr);
			ret = -EROFS;
			goto out;
		}
	}

	for (i = FUNC2(el->l_next_free_rec) - 1; i >= 0; i--) {
		rec = &el->l_recs[i];

		if (FUNC3(rec->e_cpos) <= name_hash) {
			e_blkno = FUNC4(rec->e_blkno);
			break;
		}
	}

	if (!e_blkno) {
		FUNC6(inode->i_sb, "Inode %lu has bad extent "
			    "record (%u, %u, 0) in xattr", inode->i_ino,
			    FUNC3(rec->e_cpos),
			    FUNC8(el, rec));
		ret = -EROFS;
		goto out;
	}

	*p_blkno = FUNC4(rec->e_blkno);
	*num_clusters = FUNC2(rec->e_leaf_clusters);
	if (e_cpos)
		*e_cpos = FUNC3(rec->e_cpos);
out:
	FUNC1(eb_bh);
	return ret;
}