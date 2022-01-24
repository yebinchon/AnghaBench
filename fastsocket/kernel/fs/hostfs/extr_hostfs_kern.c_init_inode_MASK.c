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
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
#define  OS_TYPE_BLOCKDEV 131 
#define  OS_TYPE_CHARDEV 130 
 int OS_TYPE_DIR ; 
#define  OS_TYPE_FIFO 129 
#define  OS_TYPE_SOCK 128 
 int OS_TYPE_SYMLINK ; 
 int /*<<< orphan*/  S_IFBLK ; 
 int /*<<< orphan*/  S_IFCHR ; 
 int /*<<< orphan*/  S_IFIFO ; 
 int /*<<< orphan*/  S_IFSOCK ; 
 char* FUNC1 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int*,int*) ; 
 int /*<<< orphan*/  hostfs_aops ; 
 int /*<<< orphan*/  hostfs_dir_fops ; 
 int /*<<< orphan*/  hostfs_dir_iops ; 
 int /*<<< orphan*/  hostfs_file_fops ; 
 int /*<<< orphan*/  hostfs_iops ; 
 int /*<<< orphan*/  hostfs_link_aops ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct dentry *dentry)
{
	char *name;
	int type, err = -ENOMEM;
	int maj, min;
	dev_t rdev = 0;

	if (dentry) {
		name = FUNC1(dentry, 0);
		if (name == NULL)
			goto out;
		type = FUNC2(name, &maj, &min);
		/* Reencode maj and min with the kernel encoding.*/
		rdev = FUNC0(maj, min);
		FUNC4(name);
	}
	else type = OS_TYPE_DIR;

	err = 0;
	if (type == OS_TYPE_SYMLINK)
		inode->i_op = &page_symlink_inode_operations;
	else if (type == OS_TYPE_DIR)
		inode->i_op = &hostfs_dir_iops;
	else inode->i_op = &hostfs_iops;

	if (type == OS_TYPE_DIR) inode->i_fop = &hostfs_dir_fops;
	else inode->i_fop = &hostfs_file_fops;

	if (type == OS_TYPE_SYMLINK)
		inode->i_mapping->a_ops = &hostfs_link_aops;
	else inode->i_mapping->a_ops = &hostfs_aops;

	switch (type) {
	case OS_TYPE_CHARDEV:
		FUNC3(inode, S_IFCHR, rdev);
		break;
	case OS_TYPE_BLOCKDEV:
		FUNC3(inode, S_IFBLK, rdev);
		break;
	case OS_TYPE_FIFO:
		FUNC3(inode, S_IFIFO, 0);
		break;
	case OS_TYPE_SOCK:
		FUNC3(inode, S_IFSOCK, 0);
		break;
	}
 out:
	return err;
}