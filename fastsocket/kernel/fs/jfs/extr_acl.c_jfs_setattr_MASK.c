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
struct inode {scalar_t__ i_uid; scalar_t__ i_gid; } ;
struct iattr {int ia_valid; scalar_t__ ia_uid; scalar_t__ ia_gid; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_UID ; 
 int EDQUOT ; 
 int FUNC0 (struct inode*,struct iattr*) ; 
 int FUNC1 (struct inode*,struct iattr*) ; 
 int FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*,struct iattr*) ; 

int FUNC4(struct dentry *dentry, struct iattr *iattr)
{
	struct inode *inode = dentry->d_inode;
	int rc;

	rc = FUNC0(inode, iattr);
	if (rc)
		return rc;

	if ((iattr->ia_valid & ATTR_UID && iattr->ia_uid != inode->i_uid) ||
	    (iattr->ia_valid & ATTR_GID && iattr->ia_gid != inode->i_gid)) {
		if (FUNC3(inode, iattr))
			return -EDQUOT;
	}

	rc = FUNC1(inode, iattr);

	if (!rc && (iattr->ia_valid & ATTR_MODE))
		rc = FUNC2(inode);

	return rc;
}