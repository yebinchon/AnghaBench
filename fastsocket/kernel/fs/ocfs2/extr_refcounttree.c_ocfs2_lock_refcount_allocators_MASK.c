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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_root_el; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct super_block*,struct ocfs2_caching_info*,struct buffer_head*,int,int,int*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_alloc_context*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct ocfs2_extent_tree*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,struct ocfs2_alloc_context**) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,struct ocfs2_alloc_context**) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb,
					u32 p_cluster, u32 num_clusters,
					struct ocfs2_extent_tree *et,
					struct ocfs2_caching_info *ref_ci,
					struct buffer_head *ref_root_bh,
					struct ocfs2_alloc_context **meta_ac,
					struct ocfs2_alloc_context **data_ac,
					int *credits)
{
	int ret = 0, meta_add = 0;
	int num_free_extents = FUNC7(FUNC0(sb), et);

	if (num_free_extents < 0) {
		ret = num_free_extents;
		FUNC2(ret);
		goto out;
	}

	if (num_free_extents < num_clusters + 2)
		meta_add =
			FUNC5(et->et_root_el);

	*credits += FUNC3(sb, et->et_root_el,
					      num_clusters + 2);

	ret = FUNC4(sb, ref_ci, ref_root_bh,
					       p_cluster, num_clusters,
					       &meta_add, credits);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	FUNC1(0, "reserve new metadata %d, clusters %u, credits = %d\n",
	     meta_add, num_clusters, *credits);
	ret = FUNC9(FUNC0(sb), meta_add,
						meta_ac);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	if (data_ac) {
		ret = FUNC8(FUNC0(sb), num_clusters,
					     data_ac);
		if (ret)
			FUNC2(ret);
	}

out:
	if (ret) {
		if (*meta_ac) {
			FUNC6(*meta_ac);
			*meta_ac = NULL;
		}
	}

	return ret;
}