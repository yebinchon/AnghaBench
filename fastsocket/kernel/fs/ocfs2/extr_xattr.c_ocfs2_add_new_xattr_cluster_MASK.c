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
typedef  int u32 ;
typedef  int u16 ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  meta_ac; int /*<<< orphan*/  data_ac; int /*<<< orphan*/ * handle; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct ocfs2_super {scalar_t__ s_clustersize_bits; int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 scalar_t__ OCFS2_MAX_XATTR_TREE_LEAF_SIZE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int*,int*) ; 
 scalar_t__ FUNC5 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,struct ocfs2_xattr_bucket*,struct ocfs2_xattr_bucket*,scalar_t__,int,int*,int*) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct buffer_head*) ; 

__attribute__((used)) static int FUNC14(struct inode *inode,
				       struct buffer_head *root_bh,
				       struct ocfs2_xattr_bucket *first,
				       struct ocfs2_xattr_bucket *target,
				       u32 *num_clusters,
				       u32 prev_cpos,
				       int *extend,
				       struct ocfs2_xattr_set_ctxt *ctxt)
{
	int ret;
	u16 bpc = FUNC9(inode->i_sb, 1);
	u32 prev_clusters = *num_clusters;
	u32 clusters_to_add = 1, bit_off, num_bits, v_start = 0;
	u64 block;
	handle_t *handle = ctxt->handle;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct ocfs2_extent_tree et;

	FUNC6(0, "Add new xattr cluster for %llu, previous xattr hash = %u, "
	     "previous xattr blkno = %llu\n",
	     (unsigned long long)FUNC2(inode)->ip_blkno,
	     prev_cpos, (unsigned long long)FUNC5(first));

	FUNC10(&et, FUNC1(inode), root_bh);

	ret = FUNC12(handle, FUNC1(inode), root_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC7(ret);
		goto leave;
	}

	ret = FUNC4(osb, handle, ctxt->data_ac, 1,
				     clusters_to_add, &bit_off, &num_bits);
	if (ret < 0) {
		if (ret != -ENOSPC)
			FUNC7(ret);
		goto leave;
	}

	FUNC0(num_bits > clusters_to_add);

	block = FUNC9(osb->sb, bit_off);
	FUNC6(0, "Allocating %u clusters at block %u for xattr in inode %llu\n",
	     num_bits, bit_off, (unsigned long long)FUNC2(inode)->ip_blkno);

	if (FUNC5(first) + (prev_clusters * bpc) == block &&
	    (prev_clusters + num_bits) << osb->s_clustersize_bits <=
	     OCFS2_MAX_XATTR_TREE_LEAF_SIZE) {
		/*
		 * If this cluster is contiguous with the old one and
		 * adding this new cluster, we don't surpass the limit of
		 * OCFS2_MAX_XATTR_TREE_LEAF_SIZE, cool. We will let it be
		 * initialized and used like other buckets in the previous
		 * cluster.
		 * So add it as a contiguous one. The caller will handle
		 * its init process.
		 */
		v_start = prev_cpos + prev_clusters;
		*num_clusters = prev_clusters + num_bits;
		FUNC6(0, "Add contiguous %u clusters to previous extent rec.\n",
		     num_bits);
	} else {
		ret = FUNC8(inode,
						       handle,
						       first,
						       target,
						       block,
						       prev_clusters,
						       &v_start,
						       extend);
		if (ret) {
			FUNC7(ret);
			goto leave;
		}
	}

	FUNC6(0, "Insert %u clusters at block %llu for xattr at %u\n",
	     num_bits, (unsigned long long)block, v_start);
	ret = FUNC11(handle, &et, v_start, block,
				  num_bits, 0, ctxt->meta_ac);
	if (ret < 0) {
		FUNC7(ret);
		goto leave;
	}

	ret = FUNC13(handle, root_bh);
	if (ret < 0)
		FUNC7(ret);

leave:
	return ret;
}