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
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EACCES ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (void*) ; 
 int OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS ; 
 int OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (struct posix_acl*,size_t*) ; 
 int FUNC6 (struct inode*,int,char*,void*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int,char*,void*,size_t,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 
 int FUNC8 (struct posix_acl*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(handle_t *handle,
			 struct inode *inode,
			 struct buffer_head *di_bh,
			 int type,
			 struct posix_acl *acl,
			 struct ocfs2_alloc_context *meta_ac,
			 struct ocfs2_alloc_context *data_ac)
{
	int name_index;
	void *value = NULL;
	size_t size = 0;
	int ret;

	if (FUNC3(inode->i_mode))
		return -EOPNOTSUPP;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name_index = OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS;
		if (acl) {
			mode_t mode = inode->i_mode;
			ret = FUNC8(acl, &mode);
			if (ret < 0)
				return ret;
			else {
				inode->i_mode = mode;
				if (ret == 0)
					acl = NULL;
			}
		}
		break;
	case ACL_TYPE_DEFAULT:
		name_index = OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT;
		if (!FUNC2(inode->i_mode))
			return acl ? -EACCES : 0;
		break;
	default:
		return -EINVAL;
	}

	if (acl) {
		value = FUNC5(acl, &size);
		if (FUNC0(value))
			return (int)FUNC1(value);
	}

	if (handle)
		ret = FUNC7(handle, inode, di_bh, name_index,
					     "", value, size, 0,
					     meta_ac, data_ac);
	else
		ret = FUNC6(inode, name_index, "", value, size, 0);

	FUNC4(value);

	return ret;
}