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
struct vfsmount {scalar_t__ mnt_root; } ;
struct path {scalar_t__ dentry; struct vfsmount* mnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int MS_REC ; 
 int MS_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vfsmount*,int) ; 
 int /*<<< orphan*/  namespace_sem ; 
 struct vfsmount* FUNC4 (struct vfsmount*,struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

__attribute__((used)) static int FUNC8(struct path *path, int flag)
{
	struct vfsmount *m, *mnt = path->mnt;
	int recurse = flag & MS_REC;
	int type = flag & ~MS_REC;
	int err = 0;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	if (path->dentry != path->mnt->mnt_root)
		return -EINVAL;

	FUNC2(&namespace_sem);
	if (type == MS_SHARED) {
		err = FUNC3(mnt, recurse);
		if (err)
			goto out_unlock;
	}

	FUNC5(&vfsmount_lock);
	for (m = mnt; m; m = (recurse ? FUNC4(m, mnt) : NULL))
		FUNC1(m, type);
	FUNC6(&vfsmount_lock);

 out_unlock:
	FUNC7(&namespace_sem);
	return err;
}