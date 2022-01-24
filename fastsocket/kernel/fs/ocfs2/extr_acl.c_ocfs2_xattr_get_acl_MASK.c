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
 int ENODATA ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int OCFS2_MOUNT_POSIX_ACL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct posix_acl*) ; 
 struct posix_acl* FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct posix_acl*) ; 
 int FUNC5 (struct posix_acl*,void*,size_t) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
			       int type,
			       void *buffer,
			       size_t size)
{
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct posix_acl *acl;
	int ret;

	if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
		return -EOPNOTSUPP;

	acl = FUNC3(inode, type);
	if (FUNC0(acl))
		return FUNC2(acl);
	if (acl == NULL)
		return -ENODATA;
	ret = FUNC5(acl, buffer, size);
	FUNC4(acl);

	return ret;
}