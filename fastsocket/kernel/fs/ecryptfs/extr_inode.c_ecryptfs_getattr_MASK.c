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
struct kstat {int /*<<< orphan*/  blocks; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kstat*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kstat*) ; 

int FUNC4(struct vfsmount *mnt, struct dentry *dentry,
		     struct kstat *stat)
{
	struct kstat lower_stat;
	int rc;

	rc = FUNC3(FUNC1(dentry),
			 FUNC0(dentry), &lower_stat);
	if (!rc) {
		FUNC2(dentry->d_inode, stat);
		stat->blocks = lower_stat.blocks;
	}
	return rc;
}