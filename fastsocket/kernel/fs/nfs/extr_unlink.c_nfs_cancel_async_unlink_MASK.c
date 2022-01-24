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
struct nfs_unlinkdata {int dummy; } ;
struct dentry {int d_flags; int /*<<< orphan*/  d_lock; struct nfs_unlinkdata* d_fsdata; } ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_unlinkdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct dentry *dentry)
{
	FUNC1(&dentry->d_lock);
	if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {
		struct nfs_unlinkdata *data = dentry->d_fsdata;

		dentry->d_flags &= ~DCACHE_NFSFS_RENAMED;
		FUNC2(&dentry->d_lock);
		FUNC0(data);
		return;
	}
	FUNC2(&dentry->d_lock);
}