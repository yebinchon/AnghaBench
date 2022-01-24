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
struct nfs_fattr {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int (* setattr ) (struct dentry*,struct nfs_fattr*,struct iattr*) ;} ;

/* Variables and functions */
 int ATTR_FILE ; 
 int ATTR_GID ; 
 int ATTR_KILL_SGID ; 
 int ATTR_KILL_SUID ; 
 int ATTR_MODE ; 
 int ATTR_OPEN ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NFSIOS_VFSSETATTR ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int NFS_VALID_ATTRS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct nfs_fattr* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct dentry*,struct nfs_fattr*,struct iattr*) ; 

int
FUNC10(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = dentry->d_inode;
	struct nfs_fattr *fattr;
	int error = -ENOMEM;

	FUNC5(inode, NFSIOS_VFSSETATTR);

	/* skip mode change if it's just for clearing setuid/setgid */
	if (attr->ia_valid & (ATTR_KILL_SUID | ATTR_KILL_SGID))
		attr->ia_valid &= ~ATTR_MODE;

	if (attr->ia_valid & ATTR_SIZE) {
		if (!FUNC1(inode->i_mode) || attr->ia_size == FUNC2(inode))
			attr->ia_valid &= ~ATTR_SIZE;
	}

	/* Optimization: if the end result is no change, don't RPC */
	attr->ia_valid &= NFS_VALID_ATTRS;
	if ((attr->ia_valid & ~(ATTR_FILE|ATTR_OPEN)) == 0)
		return 0;

	/* Write all dirty data */
	if (FUNC1(inode->i_mode))
		FUNC8(inode);

	fattr = FUNC3();
	if (fattr == NULL)
		goto out;
	/*
	 * Return any delegations if we're going to change ACLs
	 */
	if ((attr->ia_valid & (ATTR_MODE|ATTR_UID|ATTR_GID)) != 0)
		FUNC6(inode);
	error = FUNC0(inode)->setattr(dentry, fattr, attr);
	if (error == 0)
		FUNC7(inode, fattr);
	FUNC4(fattr);
out:
	return error;
}