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
struct file {struct configfs_dirent* private_data; TYPE_1__ f_path; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct configfs_dirent {int /*<<< orphan*/  s_sibling; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct dentry * dentry = file->f_path.dentry;
	struct configfs_dirent * cursor = file->private_data;

	FUNC1(&dentry->d_inode->i_mutex);
	FUNC4(&configfs_dirent_lock);
	FUNC0(&cursor->s_sibling);
	FUNC5(&configfs_dirent_lock);
	FUNC2(&dentry->d_inode->i_mutex);

	FUNC3(cursor);

	return 0;
}