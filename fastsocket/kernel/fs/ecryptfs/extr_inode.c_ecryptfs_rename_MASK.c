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
struct dentry {struct dentry* d_parent; int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct dentry*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,struct dentry*) ; 

__attribute__((used)) static int
FUNC8(struct inode *old_dir, struct dentry *old_dentry,
		struct inode *new_dir, struct dentry *new_dentry)
{
	int rc;
	struct dentry *lower_old_dentry;
	struct dentry *lower_new_dentry;
	struct dentry *lower_old_dir_dentry;
	struct dentry *lower_new_dir_dentry;

	lower_old_dentry = FUNC3(old_dentry);
	lower_new_dentry = FUNC3(new_dentry);
	FUNC0(lower_old_dentry);
	FUNC0(lower_new_dentry);
	lower_old_dir_dentry = FUNC1(lower_old_dentry);
	lower_new_dir_dentry = FUNC1(lower_new_dentry);
	FUNC5(lower_old_dir_dentry, lower_new_dir_dentry);
	rc = FUNC7(lower_old_dir_dentry->d_inode, lower_old_dentry,
			lower_new_dir_dentry->d_inode, lower_new_dentry);
	if (rc)
		goto out_lock;
	FUNC4(new_dir, lower_new_dir_dentry->d_inode, NULL);
	if (new_dir != old_dir)
		FUNC4(old_dir, lower_old_dir_dentry->d_inode, NULL);
out_lock:
	FUNC6(lower_old_dir_dentry, lower_new_dir_dentry);
	FUNC2(lower_new_dentry->d_parent);
	FUNC2(lower_old_dentry->d_parent);
	FUNC2(lower_new_dentry);
	FUNC2(lower_old_dentry);
	return rc;
}