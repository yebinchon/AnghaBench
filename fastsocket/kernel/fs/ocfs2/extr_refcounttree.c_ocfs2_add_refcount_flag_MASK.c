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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_post_refcount {int (* func ) (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  para; scalar_t__ credits; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_alloc_context*) ; 
 int FUNC9 (struct inode*,struct ocfs2_extent_tree*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC10 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int /*<<< orphan*/ * FUNC11 (struct ocfs2_super*,int) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC13(struct inode *inode,
			    struct ocfs2_extent_tree *data_et,
			    struct ocfs2_caching_info *ref_ci,
			    struct buffer_head *ref_root_bh,
			    u32 cpos, u32 p_cluster, u32 num_clusters,
			    struct ocfs2_cached_dealloc_ctxt *dealloc,
			    struct ocfs2_post_refcount *post)
{
	int ret;
	handle_t *handle;
	int credits = 1, ref_blocks = 0;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct ocfs2_alloc_context *meta_ac = NULL;

	ret = FUNC6(inode->i_sb,
					       ref_ci, ref_root_bh,
					       p_cluster, num_clusters,
					       &ref_blocks, &credits);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	FUNC4(0, "reserve new metadata %d, credits = %d\n",
	     ref_blocks, credits);

	if (ref_blocks) {
		ret = FUNC10(FUNC1(inode->i_sb),
							ref_blocks, &meta_ac);
		if (ret) {
			FUNC5(ret);
			goto out;
		}
	}

	if (post)
		credits += post->credits;

	handle = FUNC11(osb, credits);
	if (FUNC0(handle)) {
		ret = FUNC2(handle);
		FUNC5(ret);
		goto out;
	}

	ret = FUNC9(inode, data_et, handle,
					   cpos, num_clusters, p_cluster,
					   meta_ac, dealloc);
	if (ret) {
		FUNC5(ret);
		goto out_commit;
	}

	ret = FUNC3(handle, ref_ci, ref_root_bh,
					p_cluster, num_clusters, 0,
					meta_ac, dealloc);
	if (ret) {
		FUNC5(ret);
		goto out_commit;
	}

	if (post && post->func) {
		ret = post->func(inode, handle, post->para);
		if (ret)
			FUNC5(ret);
	}

out_commit:
	FUNC7(osb, handle);
out:
	if (meta_ac)
		FUNC8(meta_ac);
	return ret;
}