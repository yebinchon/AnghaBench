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
struct dentry {int /*<<< orphan*/  d_lock; scalar_t__ d_inode; } ;
struct configfs_dirent {struct dentry* s_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct configfs_dirent * sd, struct dentry * parent)
{
	struct dentry * dentry = sd->s_dentry;

	if (dentry) {
		FUNC4(&dcache_lock);
		FUNC4(&dentry->d_lock);
		if (!(FUNC1(dentry) && dentry->d_inode)) {
			FUNC2(dentry);
			FUNC0(dentry);
			FUNC5(&dentry->d_lock);
			FUNC5(&dcache_lock);
			FUNC3(parent->d_inode, dentry);
		} else {
			FUNC5(&dentry->d_lock);
			FUNC5(&dcache_lock);
		}
	}
}