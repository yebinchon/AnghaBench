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
typedef  int /*<<< orphan*/  umode_t ;
struct qstr {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 struct dentry* FUNC2 (struct dentry*,struct qstr*) ; 
 int FUNC3 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC7(struct dentry *parent,
		struct qstr *name, umode_t mode, void *private,
		int (*populate)(struct dentry *, void *), void *args_populate)
{
	struct dentry *dentry;
	struct inode *dir = parent->d_inode;
	int error;

	FUNC5(&dir->i_mutex, I_MUTEX_PARENT);
	dentry = FUNC2(parent, name);
	if (FUNC1(dentry))
		goto out;
	error = FUNC3(dir, dentry, mode, NULL, private);
	if (error != 0)
		goto out_err;
	if (populate != NULL) {
		error = populate(dentry, args_populate);
		if (error)
			goto err_rmdir;
	}
out:
	FUNC6(&dir->i_mutex);
	return dentry;
err_rmdir:
	FUNC4(dir, dentry);
out_err:
	dentry = FUNC0(error);
	goto out;
}