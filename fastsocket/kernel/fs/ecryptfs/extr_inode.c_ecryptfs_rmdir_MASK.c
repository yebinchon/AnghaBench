#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_nlink; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,TYPE_1__*) ; 
 struct dentry* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int FUNC8 (TYPE_1__*,struct dentry*) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry)
{
	struct dentry *lower_dentry;
	struct dentry *lower_dir_dentry;
	int rc;

	lower_dentry = FUNC4(dentry);
	FUNC2(dentry);
	lower_dir_dentry = FUNC6(lower_dentry);
	FUNC2(lower_dentry);
	rc = FUNC8(lower_dir_dentry->d_inode, lower_dentry);
	FUNC3(lower_dentry);
	if (!rc)
		FUNC0(lower_dentry);
	FUNC5(dir, lower_dir_dentry->d_inode);
	dir->i_nlink = lower_dir_dentry->d_inode->i_nlink;
	FUNC7(lower_dir_dentry);
	if (!rc)
		FUNC1(dentry);
	FUNC3(dentry);
	return rc;
}