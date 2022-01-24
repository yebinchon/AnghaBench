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
struct ocfs2_dir_lookup_result {int /*<<< orphan*/  dl_leaf_bh; int /*<<< orphan*/  dl_entry; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct inode*,struct ocfs2_dir_lookup_result*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 

int FUNC5(handle_t *handle,
		       struct inode *dir,
		       struct ocfs2_dir_lookup_result *res)
{
	if (FUNC4(dir))
		return FUNC1(handle, dir, res);

	if (FUNC0(dir)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		return FUNC3(handle, dir, res->dl_entry,
					     res->dl_leaf_bh);

	return FUNC2(handle, dir, res->dl_entry,
				     res->dl_leaf_bh);
}