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
struct ocfs2_xattr_set_ctxt {int dummy; } ;
struct ocfs2_xattr_search {TYPE_1__* inode_bh; } ;
struct ocfs2_xattr_info {int dummy; } ;
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_alloc_sem; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {TYPE_2__* i_sb; } ;
struct TYPE_4__ {scalar_t__ s_blocksize; } ;
struct TYPE_3__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int OCFS2_HAS_XATTR_FL ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_XATTR_FL ; 
 scalar_t__ OCFS2_MIN_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ocfs2_dinode*) ; 
 int FUNC3 (struct inode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
				 struct ocfs2_xattr_info *xi,
				 struct ocfs2_xattr_search *xs,
				 struct ocfs2_xattr_set_ctxt *ctxt)
{
	struct ocfs2_inode_info *oi = FUNC0(inode);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)xs->inode_bh->b_data;
	int ret;

	if (inode->i_sb->s_blocksize == OCFS2_MIN_BLOCKSIZE)
		return -ENOSPC;

	FUNC1(&oi->ip_alloc_sem);
	if (!(oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL)) {
		if (!FUNC2(inode, di)) {
			ret = -ENOSPC;
			goto out;
		}
	}

	ret = FUNC3(inode, xi, xs, ctxt,
				(OCFS2_INLINE_XATTR_FL | OCFS2_HAS_XATTR_FL));
out:
	FUNC4(&oi->ip_alloc_sem);

	return ret;
}