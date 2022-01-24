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
struct vfsmount {scalar_t__ mnt_sb; scalar_t__ mnt_root; int /*<<< orphan*/  mnt_expire; int /*<<< orphan*/  mnt_count; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct TYPE_2__ {scalar_t__ mnt_sb; int mnt_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ELOOP ; 
 int MNT_SHRINKABLE ; 
 int FUNC1 (struct vfsmount*,struct path*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vfsmount*) ; 
 int /*<<< orphan*/  namespace_sem ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

int FUNC10(struct vfsmount *m, struct path *path)
{
	int err;
	/* The new mount record should have at least 2 refs to prevent it being
	 * expired before we get a chance to add it
	 */
	FUNC0(FUNC2(&m->mnt_count) < 2);

	if (m->mnt_sb == path->mnt->mnt_sb &&
	    m->mnt_root == path->dentry) {
		err = -ELOOP;
		goto fail;
	}

	err = FUNC1(m, path, path->mnt->mnt_flags | MNT_SHRINKABLE);
	if (!err)
		return 0;
fail:
	/* remove m from any expiration list it may be on */
	if (!FUNC5(&m->mnt_expire)) {
		FUNC3(&namespace_sem);
		FUNC7(&vfsmount_lock);
		FUNC4(&m->mnt_expire);
		FUNC8(&vfsmount_lock);
		FUNC9(&namespace_sem);
	}
	FUNC6(m);
	FUNC6(m);
	return err;
}