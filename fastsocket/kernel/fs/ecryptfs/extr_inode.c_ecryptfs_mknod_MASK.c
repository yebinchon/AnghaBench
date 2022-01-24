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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct dentry*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct inode *dir, struct dentry *dentry, int mode, dev_t dev)
{
	int rc;
	struct dentry *lower_dentry;
	struct dentry *lower_dir_dentry;

	lower_dentry = FUNC1(dentry);
	lower_dir_dentry = FUNC5(lower_dentry);
	rc = FUNC7(lower_dir_dentry->d_inode, lower_dentry, mode, dev);
	if (rc || !lower_dentry->d_inode)
		goto out;
	rc = FUNC2(lower_dentry, dentry, dir->i_sb, 0);
	if (rc)
		goto out;
	FUNC3(dir, lower_dir_dentry->d_inode);
	FUNC4(dir, lower_dir_dentry->d_inode);
out:
	FUNC6(lower_dir_dentry);
	if (!dentry->d_inode)
		FUNC0(dentry);
	return rc;
}