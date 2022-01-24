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
typedef  scalar_t__ u64 ;
typedef  unsigned long long u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_reflink_xattr_tree_args {int /*<<< orphan*/  new_blk_bh; TYPE_1__* reflink; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  new_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,unsigned long long,unsigned long long*,unsigned long long*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,unsigned long long,scalar_t__,unsigned long long,int /*<<< orphan*/ ,struct ocfs2_alloc_context*) ; 
 int FUNC12 (struct ocfs2_reflink_xattr_tree_args*,struct ocfs2_extent_tree*,scalar_t__,unsigned long long,int*,struct ocfs2_alloc_context**,struct ocfs2_alloc_context**) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,unsigned long long,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,struct ocfs2_reflink_xattr_tree_args*) ; 
 int /*<<< orphan*/ * FUNC14 (struct ocfs2_super*,int) ; 

__attribute__((used)) static int FUNC15(struct inode *inode,
				   struct buffer_head *root_bh,
				   u64 blkno,
				   u32 cpos,
				   u32 len,
				   void *para)
{
	int ret, credits = 0;
	u32 p_cluster, num_clusters;
	u64 new_blkno;
	handle_t *handle;
	struct ocfs2_reflink_xattr_tree_args *args =
			(struct ocfs2_reflink_xattr_tree_args *)para;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct ocfs2_alloc_context *meta_ac = NULL;
	struct ocfs2_alloc_context *data_ac = NULL;
	struct ocfs2_extent_tree et;

	FUNC10(&et,
					  FUNC0(args->reflink->new_inode),
					  args->new_blk_bh);

	ret = FUNC12(args, &et, blkno,
						      len, &credits,
						      &meta_ac, &data_ac);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	handle = FUNC14(osb, credits);
	if (FUNC1(handle)) {
		ret = FUNC3(handle);
		FUNC5(ret);
		goto out;
	}

	ret = FUNC6(osb, handle, data_ac,
				   len, &p_cluster, &num_clusters);
	if (ret) {
		FUNC5(ret);
		goto out_commit;
	}

	new_blkno = FUNC7(osb->sb, p_cluster);

	FUNC4(0, "reflink xattr buckets %llu to %llu, len %u\n",
	     (unsigned long long)blkno, (unsigned long long)new_blkno, len);
	ret = FUNC13(handle, blkno, new_blkno, len,
					  meta_ac, data_ac, args);
	if (ret) {
		FUNC5(ret);
		goto out_commit;
	}

	FUNC4(0, "insert new xattr extent rec start %llu len %u to %u\n",
	     (unsigned long long)new_blkno, len, cpos);
	ret = FUNC11(handle, &et, cpos, new_blkno,
				  len, 0, meta_ac);
	if (ret)
		FUNC5(ret);

out_commit:
	FUNC8(osb, handle);

out:
	if (meta_ac)
		FUNC9(meta_ac);
	if (data_ac)
		FUNC9(data_ac);
	return ret;
}