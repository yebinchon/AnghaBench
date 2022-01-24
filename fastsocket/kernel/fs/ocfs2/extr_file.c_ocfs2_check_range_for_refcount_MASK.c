#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_5__ {int ip_dyn_features; } ;
struct TYPE_4__ {scalar_t__ s_clustersize_bits; } ;

/* Variables and functions */
 unsigned int OCFS2_EXT_REFCOUNTED ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct super_block*,scalar_t__) ; 
 int FUNC4 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(struct inode *inode, loff_t pos,
				   size_t count)
{
	int ret = 0;
	unsigned int extent_flags;
	u32 cpos, clusters, extent_len, phys_cpos;
	struct super_block *sb = inode->i_sb;

	if (!FUNC5(FUNC1(inode->i_sb)) ||
	    !(FUNC0(inode)->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL) ||
	    FUNC0(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		return 0;

	cpos = pos >> FUNC1(sb)->s_clustersize_bits;
	clusters = FUNC3(sb, pos + count) - cpos;

	while (clusters) {
		ret = FUNC4(inode, cpos, &phys_cpos, &extent_len,
					 &extent_flags);
		if (ret < 0) {
			FUNC2(ret);
			goto out;
		}

		if (phys_cpos && (extent_flags & OCFS2_EXT_REFCOUNTED)) {
			ret = 1;
			break;
		}

		if (extent_len > clusters)
			extent_len = clusters;

		clusters -= extent_len;
		cpos += extent_len;
	}
out:
	return ret;
}