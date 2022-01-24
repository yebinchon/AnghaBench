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
struct proc_dir_entry {scalar_t__ namelen; unsigned int low_ino; int /*<<< orphan*/  name; struct proc_dir_entry* next; struct proc_dir_entry* subdir; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_1__ d_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  proc_dentry_operations ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,unsigned int,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  proc_subdir_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC8(struct proc_dir_entry *de, struct inode *dir,
		struct dentry *dentry)
{
	struct inode *inode = NULL;
	int error = -ENOENT;

	FUNC6(&proc_subdir_lock);
	for (de = de->subdir; de ; de = de->next) {
		if (de->namelen != dentry->d_name.len)
			continue;
		if (!FUNC4(dentry->d_name.name, de->name, de->namelen)) {
			unsigned int ino;

			ino = de->low_ino;
			FUNC2(de);
			FUNC7(&proc_subdir_lock);
			error = -EINVAL;
			inode = FUNC5(dir->i_sb, ino, de);
			goto out_unlock;
		}
	}
	FUNC7(&proc_subdir_lock);
out_unlock:

	if (inode) {
		dentry->d_op = &proc_dentry_operations;
		FUNC1(dentry, inode);
		return NULL;
	}
	if (de)
		FUNC3(de);
	return FUNC0(error);
}