#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_3__* i_sb; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_flags; TYPE_1__* i_op; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_6__ {TYPE_2__* s_type; } ;
struct TYPE_5__ {int fs_flags; } ;
struct TYPE_4__ {int (* rename ) (struct inode*,struct dentry*,struct inode*,struct dentry*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int FS_RENAME_DOES_D_MOVE ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int /*<<< orphan*/  S_DEAD ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*,struct dentry*,struct inode*,struct dentry*) ; 
 int FUNC10 (struct inode*,struct dentry*,struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC11(struct inode *old_dir, struct dentry *old_dentry,
			  struct inode *new_dir, struct dentry *new_dentry)
{
	int error = 0;
	struct inode *target;

	/*
	 * If we are going to change the parent - check write permissions,
	 * we'll need to flip '..'.
	 */
	if (new_dir != old_dir) {
		error = FUNC6(old_dentry->d_inode, MAY_WRITE);
		if (error)
			return error;
	}

	error = FUNC9(old_dir, old_dentry, new_dir, new_dentry);
	if (error)
		return error;

	target = new_dentry->d_inode;
	if (target) {
		FUNC7(&target->i_mutex);
		FUNC4(new_dentry);
	}
	if (FUNC0(old_dentry)||FUNC0(new_dentry))
		error = -EBUSY;
	else 
		error = old_dir->i_op->rename(old_dir, old_dentry, new_dir, new_dentry);
	if (target) {
		if (!error)
			target->i_flags |= S_DEAD;
		FUNC8(&target->i_mutex);
		if (FUNC3(new_dentry))
			FUNC2(new_dentry);
		FUNC5(new_dentry);
	}
	if (!error)
		if (!(old_dir->i_sb->s_type->fs_flags & FS_RENAME_DOES_D_MOVE))
			FUNC1(old_dentry,new_dentry);
	return error;
}