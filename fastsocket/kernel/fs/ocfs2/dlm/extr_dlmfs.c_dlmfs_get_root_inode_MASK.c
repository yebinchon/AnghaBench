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
struct super_block {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; TYPE_1__* i_mapping; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct dlmfs_inode_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 struct dlmfs_inode_private* FUNC0 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  dlmfs_backing_dev_info ; 
 int /*<<< orphan*/  dlmfs_root_inode_operations ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *sb)
{
	struct inode *inode = FUNC4(sb);
	int mode = S_IFDIR | 0755;
	struct dlmfs_inode_private *ip;

	if (inode) {
		ip = FUNC0(inode);

		inode->i_mode = mode;
		inode->i_uid = FUNC2();
		inode->i_gid = FUNC1();
		inode->i_mapping->backing_dev_info = &dlmfs_backing_dev_info;
		inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
		FUNC3(inode);

		inode->i_fop = &simple_dir_operations;
		inode->i_op = &dlmfs_root_inode_operations;
	}

	return inode;
}