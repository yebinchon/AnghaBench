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
struct TYPE_2__ {struct sysfs_dirent* removed_list; } ;
struct sysfs_dirent {TYPE_1__ u; } ;
struct sysfs_addrm_cxt {struct sysfs_dirent* removed; scalar_t__ cnt; struct inode* parent_inode; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  sysfs_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysfs_dirent*) ; 

void FUNC6(struct sysfs_addrm_cxt *acxt)
{
	/* release resources acquired by sysfs_addrm_start() */
	FUNC1(&sysfs_mutex);
	if (acxt->parent_inode) {
		struct inode *inode = acxt->parent_inode;

		/* if added/removed, update timestamps on the parent */
		if (acxt->cnt)
			inode->i_ctime = inode->i_mtime = CURRENT_TIME;

		FUNC1(&inode->i_mutex);
		FUNC0(inode);
	}

	/* kill removed sysfs_dirents */
	while (acxt->removed) {
		struct sysfs_dirent *sd = acxt->removed;

		acxt->removed = sd->u.removed_list;

		FUNC3(sd);
		FUNC2(sd);
		FUNC5(sd);
		FUNC4(sd);
	}
}