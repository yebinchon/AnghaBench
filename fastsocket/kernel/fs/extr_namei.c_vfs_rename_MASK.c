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
struct inode {TYPE_1__* i_op; } ;
struct TYPE_5__ {char* name; } ;
struct dentry {TYPE_3__* d_inode; TYPE_2__ d_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  rename; } ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct inode*,char const*,char const*,int,TYPE_3__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (struct inode*,struct dentry*) ; 
 int FUNC5 (struct inode*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,struct dentry*,struct inode*,struct dentry*) ; 
 int FUNC8 (struct inode*,struct dentry*,struct inode*,struct dentry*) ; 

int FUNC9(struct inode *old_dir, struct dentry *old_dentry,
	       struct inode *new_dir, struct dentry *new_dentry)
{
	int error;
	int is_dir = FUNC0(old_dentry->d_inode->i_mode);
	const char *old_name;

	if (old_dentry->d_inode == new_dentry->d_inode)
 		return 0;
 
	error = FUNC5(old_dir, old_dentry, is_dir);
	if (error)
		return error;

	if (!new_dentry->d_inode)
		error = FUNC4(new_dir, new_dentry);
	else
		error = FUNC5(new_dir, new_dentry, is_dir);
	if (error)
		return error;

	if (!old_dir->i_op->rename)
		return -EPERM;

	FUNC6(old_dir);
	FUNC6(new_dir);

	old_name = FUNC3(old_dentry->d_name.name);

	if (is_dir)
		error = FUNC7(old_dir,old_dentry,new_dir,new_dentry);
	else
		error = FUNC8(old_dir,old_dentry,new_dir,new_dentry);
	if (!error) {
		const char *new_name = old_dentry->d_name.name;
		FUNC1(old_dir, new_dir, old_name, new_name, is_dir,
			      new_dentry->d_inode, old_dentry);
	}
	FUNC2(old_name);

	return error;
}