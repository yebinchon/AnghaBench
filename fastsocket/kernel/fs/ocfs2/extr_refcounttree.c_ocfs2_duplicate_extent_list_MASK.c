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
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*,scalar_t__,scalar_t__,scalar_t__,unsigned int,struct ocfs2_cached_dealloc_ctxt*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static int FUNC7(struct inode *s_inode,
				struct inode *t_inode,
				struct buffer_head *t_bh,
				struct ocfs2_caching_info *ref_ci,
				struct buffer_head *ref_root_bh,
				struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret = 0;
	u32 p_cluster, num_clusters, clusters, cpos;
	loff_t size;
	unsigned int ext_flags;
	struct ocfs2_extent_tree et;

	FUNC6(&et, FUNC0(t_inode), t_bh);

	size = FUNC1(s_inode);
	clusters = FUNC4(s_inode->i_sb, size);

	cpos = 0;
	while (cpos < clusters) {
		ret = FUNC5(s_inode, cpos, &p_cluster,
					 &num_clusters, &ext_flags);

		if (p_cluster) {
			ret = FUNC3(t_inode, &et,
							  ref_ci, ref_root_bh,
							  cpos, p_cluster,
							  num_clusters,
							  ext_flags,
							  dealloc);
			if (ret) {
				FUNC2(ret);
				goto out;
			}
		}

		cpos += num_clusters;
	}

out:
	return ret;
}