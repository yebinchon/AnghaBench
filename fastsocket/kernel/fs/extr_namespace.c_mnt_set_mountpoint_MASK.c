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
struct vfsmount {int /*<<< orphan*/  mnt_mountpoint; int /*<<< orphan*/  mnt_parent; } ;
struct dentry {int /*<<< orphan*/  d_mounted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*) ; 

void FUNC2(struct vfsmount *mnt, struct dentry *dentry,
			struct vfsmount *child_mnt)
{
	child_mnt->mnt_parent = FUNC1(mnt);
	child_mnt->mnt_mountpoint = FUNC0(dentry);
	dentry->d_mounted++;
}