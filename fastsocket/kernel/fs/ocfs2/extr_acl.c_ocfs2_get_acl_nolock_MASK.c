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
struct ocfs2_super {int s_mount_opt; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EINVAL ; 
 int ENODATA ; 
 int ENOMEM ; 
 struct posix_acl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int OCFS2_MOUNT_POSIX_ACL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS ; 
 int OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (char*,int) ; 
 int FUNC5 (struct inode*,struct buffer_head*,int,char*,char*,int) ; 

__attribute__((used)) static struct posix_acl *FUNC6(struct inode *inode,
					      int type,
					      struct buffer_head *di_bh)
{
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	int name_index;
	char *value = NULL;
	struct posix_acl *acl;
	int retval;

	if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
		return NULL;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name_index = OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS;
		break;
	case ACL_TYPE_DEFAULT:
		name_index = OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT;
		break;
	default:
		return FUNC0(-EINVAL);
	}

	retval = FUNC5(inode, di_bh, name_index, "", NULL, 0);
	if (retval > 0) {
		value = FUNC3(retval, GFP_NOFS);
		if (!value)
			return FUNC0(-ENOMEM);
		retval = FUNC5(inode, di_bh, name_index,
						"", value, retval);
	}

	if (retval > 0)
		acl = FUNC4(value, retval);
	else if (retval == -ENODATA || retval == 0)
		acl = NULL;
	else
		acl = FUNC0(retval);

	FUNC2(value);

	return acl;
}