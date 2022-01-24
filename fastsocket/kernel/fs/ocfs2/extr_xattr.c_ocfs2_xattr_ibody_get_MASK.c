#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_search {TYPE_3__* here; void* base; struct ocfs2_xattr_header* header; void* end; TYPE_1__* inode_bh; } ;
struct ocfs2_xattr_header {TYPE_3__* xh_entries; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_xattr_inline_size; } ;
struct inode {TYPE_2__* i_sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  xe_name_len; int /*<<< orphan*/  xe_name_offset; int /*<<< orphan*/  xe_value_size; } ;
struct TYPE_5__ {int s_blocksize; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENODATA ; 
 int ERANGE ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_XATTR_FL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,char const*,struct ocfs2_xattr_search*) ; 
 int FUNC7 (struct inode*,struct ocfs2_xattr_value_root*,void*,size_t) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
				 int name_index,
				 const char *name,
				 void *buffer,
				 size_t buffer_size,
				 struct ocfs2_xattr_search *xs)
{
	struct ocfs2_inode_info *oi = FUNC0(inode);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)xs->inode_bh->b_data;
	struct ocfs2_xattr_value_root *xv;
	size_t size;
	int ret = 0;

	if (!(oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL))
		return -ENODATA;

	xs->end = (void *)di + inode->i_sb->s_blocksize;
	xs->header = (struct ocfs2_xattr_header *)
			(xs->end - FUNC2(di->i_xattr_inline_size));
	xs->base = (void *)xs->header;
	xs->here = xs->header->xh_entries;

	ret = FUNC6(name_index, name, xs);
	if (ret)
		return ret;
	size = FUNC3(xs->here->xe_value_size);
	if (buffer) {
		if (size > buffer_size)
			return -ERANGE;
		if (FUNC8(xs->here)) {
			FUNC4(buffer, (void *)xs->base +
			       FUNC2(xs->here->xe_name_offset) +
			       FUNC1(xs->here->xe_name_len), size);
		} else {
			xv = (struct ocfs2_xattr_value_root *)
				(xs->base + FUNC2(
				 xs->here->xe_name_offset) +
				FUNC1(xs->here->xe_name_len));
			ret = FUNC7(inode, xv,
							    buffer, size);
			if (ret < 0) {
				FUNC5(ret);
				return ret;
			}
		}
	}

	return size;
}