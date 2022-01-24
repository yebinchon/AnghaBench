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
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_ci; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EROFS ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_refcount_tree**) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,struct ocfs2_alloc_context**) ; 

int FUNC14(struct inode *inode,
					  struct buffer_head *di_bh,
					  u64 phys_blkno,
					  u32 clusters,
					  int *credits,
					  struct ocfs2_alloc_context **meta_ac)
{
	int ret, ref_blocks = 0;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_inode_info *oi = FUNC1(inode);
	struct buffer_head *ref_root_bh = NULL;
	struct ocfs2_refcount_tree *tree;
	u64 start_cpos = FUNC7(inode->i_sb, phys_blkno);

	if (!FUNC12(FUNC2(inode->i_sb))) {
		FUNC9(inode->i_sb, "Inode %lu want to use refcount "
			    "tree, but the feature bit is not set in the "
			    "super block.", inode->i_ino);
		ret = -EROFS;
		goto out;
	}

	FUNC0(!(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL));

	ret = FUNC10(FUNC2(inode->i_sb),
				      FUNC4(di->i_refcount_loc), &tree);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	ret = FUNC11(&tree->rf_ci,
					FUNC4(di->i_refcount_loc),
					&ref_root_bh);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	ret = FUNC8(inode->i_sb,
					       &tree->rf_ci,
					       ref_root_bh,
					       start_cpos, clusters,
					       &ref_blocks, credits);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	FUNC5(0, "reserve new metadata %d, credits = %d\n",
	     ref_blocks, *credits);

	if (ref_blocks) {
		ret = FUNC13(FUNC2(inode->i_sb),
							ref_blocks, meta_ac);
		if (ret)
			FUNC6(ret);
	}

out:
	FUNC3(ref_root_bh);
	return ret;
}