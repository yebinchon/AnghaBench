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
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int /*<<< orphan*/  ia_mode; } ;
struct gfs2_inode {struct inode i_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 struct posix_acl* FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct iattr*) ; 
 int FUNC4 (struct gfs2_inode*,struct iattr*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC8 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct posix_acl*) ; 
 unsigned int FUNC10 (struct posix_acl*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 

int FUNC12(struct gfs2_inode *ip, struct iattr *attr)
{
	struct inode *inode = &ip->i_inode;
	struct posix_acl *acl, *clone;
	char *data;
	unsigned int len;
	int error;

	acl = FUNC2(ip, ACL_TYPE_ACCESS);
	if (FUNC0(acl))
		return FUNC1(acl);
	if (!acl)
		return FUNC3(inode, attr);

	clone = FUNC8(acl, GFP_NOFS);
	error = -ENOMEM;
	if (!clone)
		goto out;
	FUNC9(acl);
	acl = clone;

	error = FUNC7(acl, attr->ia_mode);
	if (!error) {
		len = FUNC10(acl, NULL, 0);
		data = FUNC6(len, GFP_NOFS);
		error = -ENOMEM;
		if (data == NULL)
			goto out;
		FUNC10(acl, data, len);
		error = FUNC4(ip, attr, data);
		FUNC5(data);
		FUNC11(&ip->i_inode, ACL_TYPE_ACCESS, acl);
	}

out:
	FUNC9(acl);
	return error;
}