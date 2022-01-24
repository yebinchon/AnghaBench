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
struct inode {TYPE_2__* i_op; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int (* rmdir ) (struct inode*,struct dentry*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (struct inode*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct dentry*) ; 
 int FUNC8 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 

int FUNC10(struct inode *dir, struct dentry *dentry)
{
	int error = FUNC4(dir, dentry, 1);

	if (error)
		return error;

	if (!dir->i_op->rmdir)
		return -EPERM;

	FUNC9(dir);

	FUNC5(&dentry->d_inode->i_mutex);
	FUNC2(dentry);
	if (FUNC1(dentry))
		error = -EBUSY;
	else {
		error = FUNC7(dir, dentry);
		if (!error) {
			error = dir->i_op->rmdir(dir, dentry);
			if (!error)
				dentry->d_inode->i_flags |= S_DEAD;
		}
	}
	FUNC6(&dentry->d_inode->i_mutex);
	if (!error) {
		FUNC0(dentry);
	}
	FUNC3(dentry);

	return error;
}