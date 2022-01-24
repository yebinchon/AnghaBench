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
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct btrfs_trans_handle {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 char* POSIX_ACL_XATTR_ACCESS ; 
 char* POSIX_ACL_XATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_trans_handle*,struct inode*,char const*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct posix_acl*,char*,int) ; 
 int FUNC6 (struct posix_acl*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int FUNC9(struct btrfs_trans_handle *trans,
			 struct inode *inode, struct posix_acl *acl, int type)
{
	int ret, size = 0;
	const char *name;
	char *value = NULL;
	mode_t mode;

	if (acl) {
		ret = FUNC6(acl);
		if (ret < 0)
			return ret;
		ret = 0;
	}

	switch (type) {
	case ACL_TYPE_ACCESS:
		mode = inode->i_mode;
		name = POSIX_ACL_XATTR_ACCESS;
		if (acl) {
			ret = FUNC4(acl, &mode);
			if (ret < 0)
				return ret;
			inode->i_mode = mode;
		}
		ret = 0;
		break;
	case ACL_TYPE_DEFAULT:
		if (!FUNC0(inode->i_mode))
			return acl ? -EINVAL : 0;
		name = POSIX_ACL_XATTR_DEFAULT;
		break;
	default:
		return -EINVAL;
	}

	if (acl) {
		size = FUNC7(acl->a_count);
		value = FUNC3(size, GFP_NOFS);
		if (!value) {
			ret = -ENOMEM;
			goto out;
		}

		ret = FUNC5(acl, value, size);
		if (ret < 0)
			goto out;
	}

	ret = FUNC1(trans, inode, name, value, size, 0);
out:
	FUNC2(value);

	if (!ret)
		FUNC8(inode, type, acl);

	return ret;
}