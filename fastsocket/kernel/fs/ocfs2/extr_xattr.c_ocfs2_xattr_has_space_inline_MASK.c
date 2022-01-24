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
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_inline_data {int /*<<< orphan*/  id_count; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_next_free_rec; int /*<<< orphan*/  l_count; } ;
struct TYPE_3__ {struct ocfs2_extent_list i_list; struct ocfs2_inline_data i_data; } ;
struct ocfs2_dinode {TYPE_1__ id2; int /*<<< orphan*/  i_size; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {unsigned int s_xattr_inline_size; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 unsigned int OCFS2_MIN_XATTR_INLINE_SIZE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
					struct ocfs2_dinode *di)
{
	struct ocfs2_inode_info *oi = FUNC0(inode);
	unsigned int xattrsize = FUNC1(inode->i_sb)->s_xattr_inline_size;
	int free;

	if (xattrsize < OCFS2_MIN_XATTR_INLINE_SIZE)
		return 0;

	if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		struct ocfs2_inline_data *idata = &di->id2.i_data;
		free = FUNC2(idata->id_count) - FUNC3(di->i_size);
	} else if (FUNC5(inode)) {
		free = FUNC4(inode->i_sb) -
			FUNC3(di->i_size);
	} else {
		struct ocfs2_extent_list *el = &di->id2.i_list;
		free = (FUNC2(el->l_count) -
			FUNC2(el->l_next_free_rec)) *
			sizeof(struct ocfs2_extent_rec);
	}
	if (free >= xattrsize)
		return 1;

	return 0;
}