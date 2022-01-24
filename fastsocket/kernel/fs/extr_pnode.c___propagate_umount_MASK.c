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
struct vfsmount {int /*<<< orphan*/  mnt_hash; int /*<<< orphan*/  mnt_mounts; int /*<<< orphan*/  mnt_mountpoint; struct vfsmount* mnt_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vfsmount* FUNC1 (struct vfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vfsmount* FUNC4 (struct vfsmount*,struct vfsmount*) ; 

__attribute__((used)) static void FUNC5(struct vfsmount *mnt)
{
	struct vfsmount *parent = mnt->mnt_parent;
	struct vfsmount *m;

	FUNC0(parent == mnt);

	for (m = FUNC4(parent, parent); m;
			m = FUNC4(m, parent)) {

		struct vfsmount *child = FUNC1(m,
					mnt->mnt_mountpoint, 0);
		/*
		 * umount the child only if the child has no
		 * other children
		 */
		if (child && FUNC2(&child->mnt_mounts))
			FUNC3(&child->mnt_hash, &mnt->mnt_hash);
	}
}