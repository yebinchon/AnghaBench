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
typedef  scalar_t__ u32 ;
struct ocfs2_inode_info {scalar_t__ ip_clusters; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC5(struct inode *inode, u64 new_i_size, u64 zero_to)
{
	int ret;
	u32 clusters_to_add;
	struct ocfs2_inode_info *oi = FUNC0(inode);

	clusters_to_add = FUNC3(inode->i_sb, new_i_size);
	if (clusters_to_add < oi->ip_clusters)
		clusters_to_add = 0;
	else
		clusters_to_add -= oi->ip_clusters;

	if (clusters_to_add) {
		ret = FUNC1(inode, oi->ip_clusters,
						clusters_to_add, 0);
		if (ret) {
			FUNC2(ret);
			goto out;
		}
	}

	/*
	 * Call this even if we don't add any clusters to the tree. We
	 * still need to zero the area between the old i_size and the
	 * new i_size.
	 */
	ret = FUNC4(inode, zero_to);
	if (ret < 0)
		FUNC2(ret);

out:
	return ret;
}