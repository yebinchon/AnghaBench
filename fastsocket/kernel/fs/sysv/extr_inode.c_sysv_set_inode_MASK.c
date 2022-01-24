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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_size; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; scalar_t__ i_blocks; int /*<<< orphan*/ * i_fop; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_data; } ;
struct TYPE_3__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sysv_aops ; 
 int /*<<< orphan*/  sysv_dir_inode_operations ; 
 int /*<<< orphan*/  sysv_dir_operations ; 
 int /*<<< orphan*/  sysv_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  sysv_file_inode_operations ; 
 int /*<<< orphan*/  sysv_file_operations ; 
 int /*<<< orphan*/  sysv_symlink_inode_operations ; 

void FUNC6(struct inode *inode, dev_t rdev)
{
	if (FUNC3(inode->i_mode)) {
		inode->i_op = &sysv_file_inode_operations;
		inode->i_fop = &sysv_file_operations;
		inode->i_mapping->a_ops = &sysv_aops;
	} else if (FUNC1(inode->i_mode)) {
		inode->i_op = &sysv_dir_inode_operations;
		inode->i_fop = &sysv_dir_operations;
		inode->i_mapping->a_ops = &sysv_aops;
	} else if (FUNC2(inode->i_mode)) {
		if (inode->i_blocks) {
			inode->i_op = &sysv_symlink_inode_operations;
			inode->i_mapping->a_ops = &sysv_aops;
		} else {
			inode->i_op = &sysv_fast_symlink_inode_operations;
			FUNC5(FUNC0(inode)->i_data, inode->i_size,
				sizeof(FUNC0(inode)->i_data) - 1);
		}
	} else
		FUNC4(inode, inode->i_mode, rdev);
}