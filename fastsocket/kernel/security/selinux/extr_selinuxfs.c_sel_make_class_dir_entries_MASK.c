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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/ * i_fop; } ;
struct dentry {int /*<<< orphan*/  d_inode; int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC1 (struct dentry*,char*) ; 
 int /*<<< orphan*/  last_class_ino ; 
 int /*<<< orphan*/  sel_class_ops ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*,int,struct dentry*) ; 

__attribute__((used)) static int FUNC6(char *classname, int index,
					struct dentry *dir)
{
	struct dentry *dentry = NULL;
	struct inode *inode = NULL;
	int rc;

	dentry = FUNC1(dir, "index");
	if (!dentry) {
		rc = -ENOMEM;
		goto out;
	}

	inode = FUNC4(dir->d_sb, S_IFREG|S_IRUGO);
	if (!inode) {
		rc = -ENOMEM;
		goto out;
	}

	inode->i_fop = &sel_class_ops;
	inode->i_ino = FUNC2(index);
	FUNC0(dentry, inode);

	dentry = FUNC1(dir, "perms");
	if (!dentry) {
		rc = -ENOMEM;
		goto out;
	}

	rc = FUNC3(dir->d_inode, dentry, &last_class_ino);
	if (rc)
		goto out;

	rc = FUNC5(classname, index, dentry);

out:
	return rc;
}