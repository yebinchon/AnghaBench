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
struct dentry {TYPE_1__* d_inode; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int /*<<< orphan*/  s_type; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIGFS_USET_DIR ; 
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC1 (struct configfs_dirent*) ; 
 int FUNC2 (struct config_item*,struct config_item*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct config_item*) ; 

__attribute__((used)) static int FUNC9(struct config_item *parent_item,
				 struct config_item *item,
				 struct dentry *dentry)
{
	int ret;
	struct configfs_dirent *sd;

	ret = FUNC2(parent_item, item, dentry);
	if (!ret) {
		sd = dentry->d_fsdata;
		sd->s_type |= CONFIGFS_USET_DIR;

		/*
		 * FYI, we're faking mkdir in populate_groups()
		 * We must lock the group's inode to avoid races with the VFS
		 * which can already hit the inode and try to add/remove entries
		 * under it.
		 *
		 * We must also lock the inode to remove it safely in case of
		 * error, as rmdir() would.
		 */
		FUNC5(&dentry->d_inode->i_mutex, I_MUTEX_CHILD);
		FUNC1(sd);
		ret = FUNC7(FUNC8(item));
		if (ret) {
			FUNC3(item);
			dentry->d_inode->i_flags |= S_DEAD;
		}
		FUNC0(sd);
		FUNC6(&dentry->d_inode->i_mutex);
		if (ret)
			FUNC4(dentry);
	}

	return ret;
}