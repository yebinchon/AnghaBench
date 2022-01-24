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
struct inode {TYPE_1__* i_op; int /*<<< orphan*/  i_mutex; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_flags; } ;
struct TYPE_3__ {int (* rmdir ) (struct inode*,struct dentry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry)
{
	int error;
	FUNC0(!FUNC4(&dir->i_mutex));
	FUNC8(dir);

	FUNC5(&dentry->d_inode->i_mutex, I_MUTEX_CHILD);
	FUNC2(dentry);
	error = dir->i_op->rmdir(dir, dentry);
	if (!error)
		dentry->d_inode->i_flags |= S_DEAD;
	FUNC6(&dentry->d_inode->i_mutex);
	if (!error)
		FUNC1(dentry);
	FUNC3(dentry);

	return error;
}