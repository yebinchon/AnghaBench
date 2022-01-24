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
struct TYPE_2__ {int /*<<< orphan*/ * dir_attr; } ;
struct nfs_unlinkdata {int /*<<< orphan*/  cred; int /*<<< orphan*/  dir_attr; TYPE_1__ res; } ;
struct inode {int dummy; } ;
struct dentry {int d_flags; int /*<<< orphan*/  d_lock; struct nfs_unlinkdata* d_fsdata; } ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_unlinkdata*) ; 
 struct nfs_unlinkdata* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct inode *dir, struct dentry *dentry)
{
	struct nfs_unlinkdata *data;
	int status = -ENOMEM;

	data = FUNC3(sizeof(*data), GFP_KERNEL);
	if (data == NULL)
		goto out;

	data->cred = FUNC5();
	if (FUNC0(data->cred)) {
		status = FUNC1(data->cred);
		goto out_free;
	}
	data->res.dir_attr = &data->dir_attr;

	status = -EBUSY;
	FUNC6(&dentry->d_lock);
	if (dentry->d_flags & DCACHE_NFSFS_RENAMED)
		goto out_unlock;
	dentry->d_flags |= DCACHE_NFSFS_RENAMED;
	dentry->d_fsdata = data;
	FUNC7(&dentry->d_lock);
	return 0;
out_unlock:
	FUNC7(&dentry->d_lock);
	FUNC4(data->cred);
out_free:
	FUNC2(data);
out:
	return status;
}