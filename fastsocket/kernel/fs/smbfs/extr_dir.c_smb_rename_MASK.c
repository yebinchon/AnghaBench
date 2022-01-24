#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int dummy; } ;
struct dentry {scalar_t__ d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct dentry*,struct dentry*) ; 
 int FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(struct inode *old_dir, struct dentry *old_dentry,
	   struct inode *new_dir, struct dentry *new_dentry)
{
	int error;

	/*
	 * Close any open files, and check whether to delete the
	 * target before attempting the rename.
	 */
	FUNC3();
	if (old_dentry->d_inode)
		FUNC4(old_dentry->d_inode);
	if (new_dentry->d_inode) {
		FUNC4(new_dentry->d_inode);
		error = FUNC7(new_dentry);
		if (error) {
			FUNC1("unlink %s/%s, error=%d\n",
				FUNC0(new_dentry), error);
			goto out;
		}
		/* FIXME */
		FUNC2(new_dentry);
	}

	FUNC5(old_dir);
	FUNC5(new_dir);
	error = FUNC6(old_dentry, new_dentry);
	if (!error) {
		FUNC8(old_dentry);
		FUNC8(new_dentry);
	}
out:
	FUNC9();
	return error;
}