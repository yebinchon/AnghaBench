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
struct ocfs2_xattr_value_root {int /*<<< orphan*/  xr_list; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 unsigned int OCFS2_EXT_REFCOUNTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct inode*,struct ocfs2_caching_info*,struct buffer_head*,struct ocfs2_xattr_value_root*,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct ocfs2_alloc_context**) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
					struct ocfs2_xattr_value_root *xv,
					struct ocfs2_caching_info *ref_ci,
					struct buffer_head *ref_root_bh,
					struct ocfs2_alloc_context **meta_ac,
					int *ref_credits)
{
	int ret, meta_add = 0;
	u32 p_cluster, num_clusters;
	unsigned int ext_flags;

	*ref_credits = 0;
	ret = FUNC4(inode, 0, &p_cluster,
				       &num_clusters,
				       &xv->xr_list,
				       &ext_flags);
	if (ret) {
		FUNC1(ret);
		goto out;
	}

	if (!(ext_flags & OCFS2_EXT_REFCOUNTED))
		goto out;

	ret = FUNC2(inode, ref_ci,
						 ref_root_bh, xv,
						 &meta_add, ref_credits);
	if (ret) {
		FUNC1(ret);
		goto out;
	}

	ret = FUNC3(FUNC0(inode->i_sb),
						meta_add, meta_ac);
	if (ret)
		FUNC1(ret);

out:
	return ret;
}