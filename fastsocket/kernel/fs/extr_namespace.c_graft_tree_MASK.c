#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {TYPE_3__* mnt_root; TYPE_1__* mnt_sb; } ;
struct path {TYPE_4__* dentry; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; } ;
struct TYPE_9__ {TYPE_5__* d_inode; } ;
struct TYPE_8__ {TYPE_2__* d_inode; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_6__ {int s_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOTDIR ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int MS_NOUSER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vfsmount*,struct path*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vfsmount*,struct path*) ; 
 int /*<<< orphan*/  FUNC7 (struct vfsmount*,struct path*) ; 

__attribute__((used)) static int FUNC8(struct vfsmount *mnt, struct path *path)
{
	int err;
	if (mnt->mnt_sb->s_flags & MS_NOUSER)
		return -EINVAL;

	if (FUNC1(path->dentry->d_inode->i_mode) !=
	      FUNC1(mnt->mnt_root->d_inode->i_mode))
		return -ENOTDIR;

	err = -ENOENT;
	FUNC4(&path->dentry->d_inode->i_mutex);
	if (FUNC0(path->dentry->d_inode))
		goto out_unlock;

	err = FUNC6(mnt, path);
	if (err)
		goto out_unlock;

	err = -ENOENT;
	if (!FUNC3(path->dentry))
		err = FUNC2(mnt, path, NULL);
out_unlock:
	FUNC5(&path->dentry->d_inode->i_mutex);
	if (!err)
		FUNC7(mnt, path);
	return err;
}