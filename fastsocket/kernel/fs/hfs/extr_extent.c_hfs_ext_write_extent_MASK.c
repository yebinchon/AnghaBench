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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  ext_tree; } ;

/* Variables and functions */
 int HFS_FLG_EXT_DIRTY ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 

void FUNC5(struct inode *inode)
{
	struct hfs_find_data fd;

	if (FUNC0(inode)->flags & HFS_FLG_EXT_DIRTY) {
		FUNC4(FUNC1(inode->i_sb)->ext_tree, &fd);
		FUNC2(inode, &fd);
		FUNC3(&fd);
	}
}