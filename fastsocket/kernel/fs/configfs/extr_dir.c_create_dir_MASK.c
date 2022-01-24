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
typedef  int umode_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {struct configfs_dirent* d_fsdata; int /*<<< orphan*/ * d_op; int /*<<< orphan*/  d_inode; TYPE_1__ d_name; } ;
struct configfs_dirent {int /*<<< orphan*/  s_sibling; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int CONFIGFS_DIR ; 
 int CONFIGFS_USET_CREATING ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IRWXU ; 
 int S_IXUGO ; 
 int FUNC0 (struct dentry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  configfs_dentry_ops ; 
 int FUNC1 (struct configfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int FUNC2 (struct configfs_dirent*,struct dentry*,struct config_item*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (struct configfs_dirent*,struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_dir ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct config_item * k, struct dentry * p,
		      struct dentry * d)
{
	int error;
	umode_t mode = S_IFDIR| S_IRWXU | S_IRUGO | S_IXUGO;

	error = FUNC1(p->d_fsdata, d->d_name.name);
	if (!error)
		error = FUNC2(p->d_fsdata, d, k, mode,
					     CONFIGFS_DIR | CONFIGFS_USET_CREATING);
	if (!error) {
		FUNC4(p->d_fsdata, d->d_fsdata);
		error = FUNC0(d, mode, init_dir);
		if (!error) {
			FUNC5(p->d_inode);
			(d)->d_op = &configfs_dentry_ops;
		} else {
			struct configfs_dirent *sd = d->d_fsdata;
			if (sd) {
				FUNC7(&configfs_dirent_lock);
				FUNC6(&sd->s_sibling);
				FUNC8(&configfs_dirent_lock);
				FUNC3(sd);
			}
		}
	}
	return error;
}