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
struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* create ) (struct inode*,struct dentry*,int,struct nameidata*) ;} ;

/* Variables and functions */
 int EACCES ; 
 int S_IALLUGO ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,struct dentry*) ; 
 int FUNC1 (struct inode*,struct dentry*) ; 
 int FUNC2 (struct inode*,struct dentry*,int) ; 
 int FUNC3 (struct inode*,struct dentry*,int,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

int FUNC5(struct inode *dir, struct dentry *dentry, int mode,
		struct nameidata *nd)
{
	int error = FUNC1(dir, dentry);

	if (error)
		return error;

	if (!dir->i_op->create)
		return -EACCES;	/* shouldn't it be ENOSYS? */
	mode &= S_IALLUGO;
	mode |= S_IFREG;
	error = FUNC2(dir, dentry, mode);
	if (error)
		return error;
	FUNC4(dir);
	error = dir->i_op->create(dir, dentry, mode, nd);
	if (!error)
		FUNC0(dir, dentry);
	return error;
}