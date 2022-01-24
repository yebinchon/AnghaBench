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
 struct posix_acl* FUNC0 (int) ; 
 int OCFS2_MOUNT_POSIX_ACL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct posix_acl* FUNC4 (struct inode*,int,struct buffer_head*) ; 
 int FUNC5 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct posix_acl *FUNC7(struct inode *inode, int type)
{
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct buffer_head *di_bh = NULL;
	struct posix_acl *acl;
	int ret;

	if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
		return NULL;

	ret = FUNC5(inode, &di_bh, 0);
	if (ret < 0) {
		FUNC3(ret);
		acl = FUNC0(ret);
		return acl;
	}

	acl = FUNC4(inode, type, di_bh);

	FUNC6(inode, 0);

	FUNC2(di_bh);

	return acl;
}