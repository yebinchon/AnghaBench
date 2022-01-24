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
struct vfsmount {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int LOOKUP_AUTOMOUNT ; 
 int LOOKUP_FOLLOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vfsmount* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vfsmount* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vfsmount*,struct path*) ; 
 int FUNC7 (char*,int,struct path*) ; 
 scalar_t__ FUNC8 (struct path*) ; 
 int FUNC9 (struct path*) ; 
 int /*<<< orphan*/  namespace_sem ; 
 int /*<<< orphan*/  FUNC10 (struct path*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  umount_list ; 
 int /*<<< orphan*/  FUNC14 (struct vfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

__attribute__((used)) static int FUNC16(struct path *path, char *old_name,
				int recurse)
{
	struct path old_path;
	struct vfsmount *mnt = NULL;
	int err = FUNC9(path);
	if (err)
		return err;
	if (!old_name || !*old_name)
		return -EINVAL;
	err = FUNC7(old_name, LOOKUP_FOLLOW|LOOKUP_AUTOMOUNT, &old_path);
	if (err)
		return err;

	err = -EINVAL;
	if (FUNC8(&old_path))
		goto out;

	FUNC5(&namespace_sem);
	err = -EINVAL;
	if (FUNC0(old_path.mnt))
		goto out;

	if (!FUNC2(path->mnt) || !FUNC2(old_path.mnt))
		goto out;

	err = -ENOMEM;
	if (recurse)
		mnt = FUNC4(old_path.mnt, old_path.dentry, 0);
	else
		mnt = FUNC3(old_path.mnt, old_path.dentry, 0);

	if (!mnt)
		goto out;

	err = FUNC6(mnt, path);
	if (err) {
		FUNC1(umount_list);
		FUNC12(&vfsmount_lock);
		FUNC14(mnt, 0, &umount_list);
		FUNC13(&vfsmount_lock);
		FUNC11(&umount_list);
	}

out:
	FUNC15(&namespace_sem);
	FUNC10(&old_path);
	return err;
}