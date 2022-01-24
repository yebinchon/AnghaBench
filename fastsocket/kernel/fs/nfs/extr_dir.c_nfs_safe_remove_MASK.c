#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct dentry {int d_flags; TYPE_3__ d_name; TYPE_2__* d_parent; struct inode* d_inode; } ;
struct TYPE_9__ {int (* remove ) (struct inode*,TYPE_3__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_1__ d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 int EBUSY ; 
 int ENOENT ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,TYPE_3__*) ; 
 int FUNC7 (struct inode*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC8(struct dentry *dentry)
{
	struct inode *dir = dentry->d_parent->d_inode;
	struct inode *inode = dentry->d_inode;
	int error = -EBUSY;
		
	FUNC1(VFS, "NFS: safe_remove(%s/%s)\n",
		dentry->d_parent->d_name.name, dentry->d_name.name);

	/* If the dentry was sillyrenamed, we simply call d_delete() */
	if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {
		error = 0;
		goto out;
	}

	if (inode != NULL) {
		FUNC4(inode);
		error = FUNC0(dir)->remove(dir, &dentry->d_name);
		/* The VFS may want to delete this inode */
		if (error == 0)
			FUNC3(inode);
		FUNC5(inode);
	} else
		error = FUNC0(dir)->remove(dir, &dentry->d_name);
	if (error == -ENOENT)
		FUNC2(dentry);
out:
	return error;
}