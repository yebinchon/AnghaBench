#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {scalar_t__ mnt_sb; int mnt_flags; TYPE_2__* mnt_root; } ;
struct path {scalar_t__ dentry; TYPE_3__* mnt; } ;
struct TYPE_6__ {scalar_t__ mnt_sb; scalar_t__ mnt_root; int /*<<< orphan*/  mnt_ns; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int MNT_SHRINKABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct path*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (struct vfsmount*,struct path*) ; 

__attribute__((used)) static int FUNC4(struct vfsmount *newmnt, struct path *path, int mnt_flags)
{
	int err;

	/* Something was mounted here while we slept */
	err = FUNC1(path, true);
	if (err < 0)
		goto unlock;

	err = -EINVAL;
	if (!(mnt_flags & MNT_SHRINKABLE) && !FUNC2(path->mnt))
		goto unlock;

        /* and in any case, we want non-NULL ->mnt_ns */
        if (!path->mnt->mnt_ns)
                goto unlock;

	/* Refuse the same filesystem on the same mount point */
	err = -EBUSY;
	if (path->mnt->mnt_sb == newmnt->mnt_sb &&
	    path->mnt->mnt_root == path->dentry)
		goto unlock;

	err = -EINVAL;
	if (FUNC0(newmnt->mnt_root->d_inode->i_mode))
		goto unlock;

	newmnt->mnt_flags = mnt_flags;
	err = FUNC3(newmnt, path);

unlock:
	return err;
}