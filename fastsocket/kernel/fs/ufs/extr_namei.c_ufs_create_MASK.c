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
struct nameidata {int dummy; } ;
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ufs_aops ; 
 int /*<<< orphan*/  ufs_file_inode_operations ; 
 int /*<<< orphan*/  ufs_file_operations ; 
 struct inode* FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8 (struct inode * dir, struct dentry * dentry, int mode,
		struct nameidata *nd)
{
	struct inode *inode;
	int err;

	FUNC2("BEGIN\n");
	inode = FUNC6(dir, mode);
	err = FUNC1(inode);

	if (!FUNC0(inode)) {
		inode->i_op = &ufs_file_inode_operations;
		inode->i_fop = &ufs_file_operations;
		inode->i_mapping->a_ops = &ufs_aops;
		FUNC4(inode);
		FUNC3();
		err = FUNC5(dentry, inode);
		FUNC7();
	}
	FUNC2("END: err=%d\n", err);
	return err;
}