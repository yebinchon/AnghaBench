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

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int OCFS2_MOUNT_POSIX_ACL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int,struct posix_acl*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct posix_acl* FUNC5 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct posix_acl*) ; 
 int FUNC7 (struct posix_acl*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
			       int type,
			       const void *value,
			       size_t size)
{
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct posix_acl *acl;
	int ret = 0;

	if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
		return -EOPNOTSUPP;

	if (!FUNC3(inode))
		return -EPERM;

	if (value) {
		acl = FUNC5(value, size);
		if (FUNC0(acl))
			return FUNC2(acl);
		else if (acl) {
			ret = FUNC7(acl);
			if (ret)
				goto cleanup;
		}
	} else
		acl = NULL;

	ret = FUNC4(NULL, inode, NULL, type, acl, NULL, NULL);

cleanup:
	FUNC6(acl);
	return ret;
}