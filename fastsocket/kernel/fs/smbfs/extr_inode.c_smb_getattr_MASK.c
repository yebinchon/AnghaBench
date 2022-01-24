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
struct kstat {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kstat*) ; 
 int FUNC1 (struct dentry*) ; 

int FUNC2(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
	int err = FUNC1(dentry);
	if (!err)
		FUNC0(dentry->d_inode, stat);
	return err;
}