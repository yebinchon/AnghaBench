#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int ip_dyn_features; } ;
struct TYPE_3__ {scalar_t__ s_clustersize_bits; } ;

/* Variables and functions */
 int ENOSPC ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct inode*,struct buffer_head*) ; 
 int FUNC7 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*,struct buffer_head**) ; 
 scalar_t__ FUNC9 (struct buffer_head*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct inode *inode,
					    u64 start, u64 len)
{
	int ret;
	u32 cpos, phys_cpos, clusters, alloc_size;
	u64 end = start + len;
	struct buffer_head *di_bh = NULL;

	if (FUNC0(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		ret = FUNC8(inode, &di_bh);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		/*
		 * Nothing to do if the requested reservation range
		 * fits within the inode.
		 */
		if (FUNC9(di_bh, end))
			goto out;

		ret = FUNC6(inode, di_bh);
		if (ret) {
			FUNC4(ret);
			goto out;
		}
	}

	/*
	 * We consider both start and len to be inclusive.
	 */
	cpos = start >> FUNC1(inode->i_sb)->s_clustersize_bits;
	clusters = FUNC5(inode->i_sb, start + len);
	clusters -= cpos;

	while (clusters) {
		ret = FUNC7(inode, cpos, &phys_cpos,
					 &alloc_size, NULL);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		/*
		 * Hole or existing extent len can be arbitrary, so
		 * cap it to our own allocation request.
		 */
		if (alloc_size > clusters)
			alloc_size = clusters;

		if (phys_cpos) {
			/*
			 * We already have an allocation at this
			 * region so we can safely skip it.
			 */
			goto next;
		}

		ret = FUNC2(inode, cpos, alloc_size, 1);
		if (ret) {
			if (ret != -ENOSPC)
				FUNC4(ret);
			goto out;
		}

next:
		cpos += alloc_size;
		clusters -= alloc_size;
	}

	ret = 0;
out:

	FUNC3(di_bh);
	return ret;
}