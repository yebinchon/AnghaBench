#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int mnt_flags; } ;
struct timespec {int dummy; } ;
struct inode {int i_flags; TYPE_1__* i_sb; struct timespec i_atime; int /*<<< orphan*/  i_mode; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {int s_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int MNT_NOATIME ; 
 int MNT_NODIRATIME ; 
 int MS_NODIRATIME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int S_NOATIME ; 
 int /*<<< orphan*/  FUNC2 (struct vfsmount*) ; 
 scalar_t__ FUNC3 (struct vfsmount*) ; 
 struct timespec FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vfsmount*,struct inode*,struct timespec) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct timespec*,struct timespec*) ; 

void FUNC10(struct vfsmount *mnt, struct dentry *dentry)
{
	struct inode *inode = dentry->d_inode;
	struct timespec now;

	if (inode->i_flags & S_NOATIME)
		return;
	if (FUNC0(inode))
		return;
	if ((inode->i_sb->s_flags & MS_NODIRATIME) && FUNC1(inode->i_mode))
		return;

	if (mnt->mnt_flags & MNT_NOATIME)
		return;
	if ((mnt->mnt_flags & MNT_NODIRATIME) && FUNC1(inode->i_mode))
		return;

	now = FUNC4(inode->i_sb);

	if (!FUNC6(mnt, inode, now))
		return;

	if (FUNC9(&inode->i_atime, &now))
		return;

	if (!FUNC8(inode->i_sb))
		return;

	if (FUNC3(mnt))
		goto skip_update;

	inode->i_atime = now;
	FUNC5(inode);
	FUNC2(mnt);
skip_update:
	FUNC7(inode->i_sb);
}