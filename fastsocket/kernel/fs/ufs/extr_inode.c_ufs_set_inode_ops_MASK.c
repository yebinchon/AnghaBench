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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/ * i_fop; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  ufs_aops ; 
 int /*<<< orphan*/  ufs_dir_inode_operations ; 
 int /*<<< orphan*/  ufs_dir_operations ; 
 int /*<<< orphan*/  ufs_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  ufs_file_inode_operations ; 
 int /*<<< orphan*/  ufs_file_operations ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct inode *inode)
{
	if (FUNC2(inode->i_mode)) {
		inode->i_op = &ufs_file_inode_operations;
		inode->i_fop = &ufs_file_operations;
		inode->i_mapping->a_ops = &ufs_aops;
	} else if (FUNC0(inode->i_mode)) {
		inode->i_op = &ufs_dir_inode_operations;
		inode->i_fop = &ufs_dir_operations;
		inode->i_mapping->a_ops = &ufs_aops;
	} else if (FUNC1(inode->i_mode)) {
		if (!inode->i_blocks)
			inode->i_op = &ufs_fast_symlink_inode_operations;
		else {
			inode->i_op = &page_symlink_inode_operations;
			inode->i_mapping->a_ops = &ufs_aops;
		}
	} else
		FUNC4(inode, inode->i_mode,
				   FUNC5(inode->i_sb, FUNC3(inode)));
}