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
struct vfsmount {int /*<<< orphan*/  mnt_expire; struct vfsmount* mnt_parent; TYPE_1__* mnt_root; } ;
struct path {TYPE_1__* dentry; struct vfsmount* mnt; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; } ;
struct TYPE_3__ {TYPE_2__* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int ELOOP ; 
 int ENOENT ; 
 int EPERM ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct vfsmount*) ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct path*,int) ; 
 int FUNC4 (struct vfsmount*,struct path*,struct path*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vfsmount*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  namespace_sem ; 
 int /*<<< orphan*/  FUNC13 (struct path*) ; 
 scalar_t__ FUNC14 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct path *path, char *old_name)
{
	struct path old_path, parent_path;
	struct vfsmount *p;
	int err = 0;
	if (!FUNC5(CAP_SYS_ADMIN))
		return -EPERM;
	if (!old_name || !*old_name)
		return -EINVAL;
	err = FUNC9(old_name, LOOKUP_FOLLOW, &old_path);
	if (err)
		return err;

	FUNC8(&namespace_sem);
	err = FUNC3(path, true);
	if (err < 0)
		goto out;

	err = -EINVAL;
	if (!FUNC6(path->mnt) || !FUNC6(old_path.mnt))
		goto out;

	err = -ENOENT;
	FUNC11(&path->dentry->d_inode->i_mutex);
	if (FUNC0(path->dentry->d_inode))
		goto out1;

	if (FUNC7(path->dentry))
		goto out1;

	err = -EINVAL;
	if (old_path.dentry != old_path.mnt->mnt_root)
		goto out1;

	if (old_path.mnt == old_path.mnt->mnt_parent)
		goto out1;

	if (FUNC2(path->dentry->d_inode->i_mode) !=
	      FUNC2(old_path.dentry->d_inode->i_mode))
		goto out1;
	/*
	 * Don't move a mount residing in a shared parent.
	 */
	if (old_path.mnt->mnt_parent &&
	    FUNC1(old_path.mnt->mnt_parent))
		goto out1;
	/*
	 * Don't move a mount tree containing unbindable mounts to a destination
	 * mount which is shared.
	 */
	if (FUNC1(path->mnt) &&
	    FUNC14(old_path.mnt))
		goto out1;
	err = -ELOOP;
	for (p = path->mnt; p->mnt_parent != p; p = p->mnt_parent)
		if (p == old_path.mnt)
			goto out1;

	err = FUNC4(old_path.mnt, path, &parent_path);
	if (err)
		goto out1;

	/* if the mount is moved, it should no longer be expire
	 * automatically */
	FUNC10(&old_path.mnt->mnt_expire);
out1:
	FUNC12(&path->dentry->d_inode->i_mutex);
out:
	FUNC15(&namespace_sem);
	if (!err)
		FUNC13(&parent_path);
	FUNC13(&old_path);
	return err;
}