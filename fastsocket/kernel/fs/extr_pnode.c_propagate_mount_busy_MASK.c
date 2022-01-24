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
struct vfsmount {int /*<<< orphan*/  mnt_mounts; int /*<<< orphan*/  mnt_mountpoint; struct vfsmount* mnt_parent; } ;

/* Variables and functions */
 struct vfsmount* FUNC0 (struct vfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vfsmount*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct vfsmount* FUNC3 (struct vfsmount*,struct vfsmount*) ; 

int FUNC4(struct vfsmount *mnt, int refcnt)
{
	struct vfsmount *m, *child;
	struct vfsmount *parent = mnt->mnt_parent;
	int ret = 0;

	if (mnt == parent)
		return FUNC1(mnt, refcnt);

	/*
	 * quickly check if the current mount can be unmounted.
	 * If not, we don't have to go checking for all other
	 * mounts
	 */
	if (!FUNC2(&mnt->mnt_mounts) || FUNC1(mnt, refcnt))
		return 1;

	for (m = FUNC3(parent, parent); m;
	     		m = FUNC3(m, parent)) {
		child = FUNC0(m, mnt->mnt_mountpoint, 0);
		if (child && FUNC2(&child->mnt_mounts) &&
		    (ret = FUNC1(child, 1)))
			break;
	}
	return ret;
}