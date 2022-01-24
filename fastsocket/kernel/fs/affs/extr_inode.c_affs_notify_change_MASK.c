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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct iattr {int ia_valid; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int s_flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_UID ; 
 int EPERM ; 
 int SF_IMMUTABLE ; 
 int SF_QUIET ; 
 int SF_SETGID ; 
 int SF_SETMODE ; 
 int SF_SETUID ; 
 int FUNC1 (struct inode*,struct iattr*) ; 
 int FUNC2 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = dentry->d_inode;
	int error;

	FUNC4("AFFS: notify_change(%lu,0x%x)\n",inode->i_ino,attr->ia_valid);

	error = FUNC1(inode,attr);
	if (error)
		goto out;

	if (((attr->ia_valid & ATTR_UID) && (FUNC0(inode->i_sb)->s_flags & SF_SETUID)) ||
	    ((attr->ia_valid & ATTR_GID) && (FUNC0(inode->i_sb)->s_flags & SF_SETGID)) ||
	    ((attr->ia_valid & ATTR_MODE) &&
	     (FUNC0(inode->i_sb)->s_flags & (SF_SETMODE | SF_IMMUTABLE)))) {
		if (!(FUNC0(inode->i_sb)->s_flags & SF_QUIET))
			error = -EPERM;
		goto out;
	}

	error = FUNC2(inode, attr);
	if (!error && (attr->ia_valid & ATTR_MODE))
		FUNC3(inode);
out:
	return error;
}