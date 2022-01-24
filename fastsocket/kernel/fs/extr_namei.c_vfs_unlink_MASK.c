#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_op; } ;
struct dentry {int d_flags; TYPE_2__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_3__ {int (* unlink ) (struct inode*,struct dentry*) ;} ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,struct dentry*) ; 
 int FUNC7 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

int FUNC9(struct inode *dir, struct dentry *dentry)
{
	int error = FUNC3(dir, dentry, 0);

	if (error)
		return error;

	if (!dir->i_op->unlink)
		return -EPERM;

	FUNC8(dir);

	FUNC4(&dentry->d_inode->i_mutex);
	if (FUNC1(dentry))
		error = -EBUSY;
	else {
		error = FUNC6(dir, dentry);
		if (!error)
			error = dir->i_op->unlink(dir, dentry);
	}
	FUNC5(&dentry->d_inode->i_mutex);

	/* We don't d_delete() NFS sillyrenamed files--they still exist. */
	if (!error && !(dentry->d_flags & DCACHE_NFSFS_RENAMED)) {
		FUNC2(dentry->d_inode);
		FUNC0(dentry);
	}

	return error;
}