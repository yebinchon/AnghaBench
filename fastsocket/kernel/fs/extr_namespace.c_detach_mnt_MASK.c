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
struct vfsmount {int /*<<< orphan*/  mnt_hash; int /*<<< orphan*/  mnt_child; TYPE_1__* mnt_root; TYPE_1__* mnt_mountpoint; struct vfsmount* mnt_parent; } ;
struct path {TYPE_1__* dentry; struct vfsmount* mnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_mounted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct vfsmount *mnt, struct path *old_path)
{
	old_path->dentry = mnt->mnt_mountpoint;
	old_path->mnt = mnt->mnt_parent;
	mnt->mnt_parent = mnt;
	mnt->mnt_mountpoint = mnt->mnt_root;
	FUNC0(&mnt->mnt_child);
	FUNC0(&mnt->mnt_hash);
	old_path->dentry->d_mounted--;
}