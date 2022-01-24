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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_xattr_value_buf {TYPE_1__* vb_xv; } ;
struct ocfs2_xattr_set_ctxt {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  xr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct ocfs2_xattr_value_buf*,scalar_t__,scalar_t__,scalar_t__,unsigned int,struct ocfs2_xattr_set_ctxt*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
				   u32 old_clusters,
				   u32 new_clusters,
				   struct ocfs2_xattr_value_buf *vb,
				   struct ocfs2_xattr_set_ctxt *ctxt)
{
	int ret = 0;
	unsigned int ext_flags;
	u32 trunc_len, cpos, phys_cpos, alloc_size;
	u64 block;

	if (old_clusters <= new_clusters)
		return 0;

	cpos = new_clusters;
	trunc_len = old_clusters - new_clusters;
	while (trunc_len) {
		ret = FUNC5(inode, cpos, &phys_cpos,
					       &alloc_size,
					       &vb->vb_xv->xr_list, &ext_flags);
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		if (alloc_size > trunc_len)
			alloc_size = trunc_len;

		ret = FUNC1(inode, vb, cpos,
						 phys_cpos, alloc_size,
						 ext_flags, ctxt);
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		block = FUNC3(inode->i_sb, phys_cpos);
		FUNC4(FUNC0(inode),
						       block, alloc_size);
		cpos += alloc_size;
		trunc_len -= alloc_size;
	}

out:
	return ret;
}