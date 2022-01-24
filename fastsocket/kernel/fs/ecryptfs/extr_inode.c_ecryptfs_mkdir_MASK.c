#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_sb; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,TYPE_1__*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (TYPE_1__*,struct dentry*,int) ; 

__attribute__((used)) static int FUNC8(struct inode *dir, struct dentry *dentry, int mode)
{
	int rc;
	struct dentry *lower_dentry;
	struct dentry *lower_dir_dentry;

	lower_dentry = FUNC1(dentry);
	lower_dir_dentry = FUNC5(lower_dentry);
	rc = FUNC7(lower_dir_dentry->d_inode, lower_dentry, mode);
	if (rc || !lower_dentry->d_inode)
		goto out;
	rc = FUNC2(lower_dentry, dentry, dir->i_sb, 0);
	if (rc)
		goto out;
	FUNC3(dir, lower_dir_dentry->d_inode);
	FUNC4(dir, lower_dir_dentry->d_inode);
	dir->i_nlink = lower_dir_dentry->d_inode->i_nlink;
out:
	FUNC6(lower_dir_dentry);
	if (!dentry->d_inode)
		FUNC0(dentry);
	return rc;
}