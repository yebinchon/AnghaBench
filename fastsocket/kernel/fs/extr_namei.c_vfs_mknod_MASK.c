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
struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int (* mknod ) (struct inode*,struct dentry*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_MKNOD ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*) ; 
 int FUNC5 (struct inode*,struct dentry*) ; 
 int FUNC6 (struct inode*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

int FUNC9(struct inode *dir, struct dentry *dentry, int mode, dev_t dev)
{
	int error = FUNC5(dir, dentry);

	if (error)
		return error;

	if ((FUNC1(mode) || FUNC0(mode)) && !FUNC2(CAP_MKNOD))
		return -EPERM;

	if (!dir->i_op->mknod)
		return -EPERM;

	error = FUNC3(mode, dev);
	if (error)
		return error;

	error = FUNC6(dir, dentry, mode, dev);
	if (error)
		return error;

	FUNC8(dir);
	error = dir->i_op->mknod(dir, dentry, mode, dev);
	if (!error)
		FUNC4(dir, dentry);
	return error;
}