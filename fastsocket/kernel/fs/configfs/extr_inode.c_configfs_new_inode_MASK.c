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
struct inode {int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; } ;
struct configfs_dirent {int /*<<< orphan*/  s_iattr; } ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_2__ {int /*<<< orphan*/ * backing_dev_info; int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  configfs_aops ; 
 int /*<<< orphan*/  configfs_backing_dev_info ; 
 int /*<<< orphan*/  configfs_inode_operations ; 
 int /*<<< orphan*/  configfs_sb ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

struct inode * FUNC3(mode_t mode, struct configfs_dirent * sd)
{
	struct inode * inode = FUNC0(configfs_sb);
	if (inode) {
		inode->i_mapping->a_ops = &configfs_aops;
		inode->i_mapping->backing_dev_info = &configfs_backing_dev_info;
		inode->i_op = &configfs_inode_operations;

		if (sd->s_iattr) {
			/* sysfs_dirent has non-default attributes
			 * get them for the new inode from persistent copy
			 * in sysfs_dirent
			 */
			FUNC2(inode, sd->s_iattr);
		} else
			FUNC1(inode, mode);
	}
	return inode;
}