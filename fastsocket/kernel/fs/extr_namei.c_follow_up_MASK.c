#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfsmount {int /*<<< orphan*/  mnt_mountpoint; struct vfsmount* mnt_parent; } ;
struct path {struct vfsmount* mnt; struct dentry* dentry; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

int FUNC6(struct path *path)
{
	struct vfsmount *parent;
	struct dentry *mountpoint;
	FUNC4(&vfsmount_lock);
	parent = path->mnt->mnt_parent;
	if (parent == path->mnt) {
		FUNC5(&vfsmount_lock);
		return 0;
	}
	FUNC2(parent);
	mountpoint = FUNC0(path->mnt->mnt_mountpoint);
	FUNC5(&vfsmount_lock);
	FUNC1(path->dentry);
	path->dentry = mountpoint;
	FUNC3(path->mnt);
	path->mnt = parent;
	return 1;
}