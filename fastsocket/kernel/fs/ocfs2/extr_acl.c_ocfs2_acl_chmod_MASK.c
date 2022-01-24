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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int OCFS2_MOUNT_POSIX_ACL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct posix_acl*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct posix_acl*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC7 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct posix_acl*) ; 

int FUNC9(struct inode *inode)
{
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct posix_acl *acl, *clone;
	int ret;

	if (FUNC3(inode->i_mode))
		return -EOPNOTSUPP;

	if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
		return 0;

	acl = FUNC4(inode, ACL_TYPE_ACCESS);
	if (FUNC0(acl) || !acl)
		return FUNC2(acl);
	clone = FUNC7(acl, GFP_KERNEL);
	FUNC8(acl);
	if (!clone)
		return -ENOMEM;
	ret = FUNC6(clone, inode->i_mode);
	if (!ret)
		ret = FUNC5(NULL, inode, NULL, ACL_TYPE_ACCESS,
				    clone, NULL, NULL);
	FUNC8(clone);
	return ret;
}