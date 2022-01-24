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
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  opencnt; struct inode* rsrc_inode; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	//struct super_block *sb = inode->i_sb;

	if (FUNC1(inode))
		inode = FUNC0(inode)->rsrc_inode;
	if (FUNC2(&FUNC0(inode)->opencnt)) {
		FUNC4(&inode->i_mutex);
		FUNC3(inode);
		//if (inode->i_flags & S_DEAD) {
		//	hfs_delete_cat(inode->i_ino, HFSPLUS_SB(sb).hidden_dir, NULL);
		//	hfs_delete_inode(inode);
		//}
		FUNC5(&inode->i_mutex);
	}
	return 0;
}