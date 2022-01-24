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
struct inode {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {int /*<<< orphan*/  private_data; TYPE_1__ f_path; } ;
struct dentry {TYPE_2__* d_inode; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC3 (struct configfs_dirent*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct dentry * dentry = file->f_path.dentry;
	struct configfs_dirent * parent_sd = dentry->d_fsdata;
	int err;

	FUNC4(&dentry->d_inode->i_mutex);
	/*
	 * Fake invisibility if dir belongs to a group/default groups hierarchy
	 * being attached
	 */
	err = -ENOENT;
	if (FUNC2(parent_sd)) {
		file->private_data = FUNC3(parent_sd, NULL, 0);
		if (FUNC0(file->private_data))
			err = FUNC1(file->private_data);
		else
			err = 0;
	}
	FUNC5(&dentry->d_inode->i_mutex);

	return err;
}