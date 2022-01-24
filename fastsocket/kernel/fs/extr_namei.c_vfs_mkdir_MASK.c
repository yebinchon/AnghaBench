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
struct TYPE_2__ {int (* mkdir ) (struct inode*,struct dentry*,int) ;} ;

/* Variables and functions */
 int EPERM ; 
 int S_IRWXUGO ; 
 int S_ISVTX ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,struct dentry*) ; 
 int FUNC1 (struct inode*,struct dentry*) ; 
 int FUNC2 (struct inode*,struct dentry*,int) ; 
 int FUNC3 (struct inode*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

int FUNC5(struct inode *dir, struct dentry *dentry, int mode)
{
	int error = FUNC1(dir, dentry);

	if (error)
		return error;

	if (!dir->i_op->mkdir)
		return -EPERM;

	mode &= (S_IRWXUGO|S_ISVTX);
	error = FUNC2(dir, dentry, mode);
	if (error)
		return error;

	FUNC4(dir);
	error = dir->i_op->mkdir(dir, dentry, mode);
	if (!error)
		FUNC0(dir, dentry);
	return error;
}