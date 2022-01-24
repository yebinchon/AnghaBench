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
struct sysfs_dirent {int /*<<< orphan*/  s_name; struct sysfs_dirent* s_parent; } ;
struct dentry {TYPE_1__* d_inode; struct sysfs_dirent* d_fsdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* sysfs_sb ; 

struct dentry *FUNC6(struct sysfs_dirent *sd)
{
	struct dentry *dentry = FUNC1(sysfs_sb->s_root);

	while (dentry->d_fsdata != sd) {
		struct sysfs_dirent *cur;
		struct dentry *parent;

		/* find the first ancestor which hasn't been looked up */
		cur = sd;
		while (cur->s_parent != dentry->d_fsdata)
			cur = cur->s_parent;

		/* look it up */
		parent = dentry;
		FUNC4(&parent->d_inode->i_mutex);
		dentry = FUNC3(cur->s_name, parent);
		FUNC5(&parent->d_inode->i_mutex);
		FUNC2(parent);

		if (FUNC0(dentry))
			break;
	}
	return dentry;
}