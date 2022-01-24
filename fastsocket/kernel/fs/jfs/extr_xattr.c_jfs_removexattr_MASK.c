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
typedef  int /*<<< orphan*/  tid_t ;
struct jfs_inode_info {int /*<<< orphan*/  commit_mutex; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 struct jfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  XATTR_REPLACE ; 
 int FUNC1 (int /*<<< orphan*/ ,struct inode*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct dentry *dentry, const char *name)
{
	struct inode *inode = dentry->d_inode;
	struct jfs_inode_info *ji = FUNC0(inode);
	int rc;
	tid_t tid;

	if ((rc = FUNC2(inode, name, NULL, 0)))
		return rc;

	tid = FUNC5(inode->i_sb, 0);
	FUNC3(&ji->commit_mutex);
	rc = FUNC1(tid, dentry->d_inode, name, NULL, 0, XATTR_REPLACE);
	if (!rc)
		rc = FUNC6(tid, 1, &inode, 0);
	FUNC7(tid);
	FUNC4(&ji->commit_mutex);

	return rc;
}