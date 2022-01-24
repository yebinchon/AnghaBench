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
struct posix_acl {int dummy; } ;
struct nfs_inode {struct posix_acl* acl_default; struct posix_acl* acl_access; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 struct posix_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct posix_acl*) ; 
 struct nfs_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct posix_acl*) ; 
 struct posix_acl* FUNC4 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct posix_acl *FUNC7(struct inode *inode, int type)
{
	struct nfs_inode *nfsi = FUNC2(inode);
	struct posix_acl *acl = FUNC0(-EINVAL);

	FUNC5(&inode->i_lock);
	switch(type) {
		case ACL_TYPE_ACCESS:
			acl = nfsi->acl_access;
			break;

		case ACL_TYPE_DEFAULT:
			acl = nfsi->acl_default;
			break;

		default:
			goto out;
	}
	if (FUNC1(acl))
		acl = FUNC0(-EAGAIN);
	else
		acl = FUNC4(acl);
out:
	FUNC6(&inode->i_lock);
	FUNC3("NFS: nfs3_get_cached_acl(%s/%ld, %d) = %p\n", inode->i_sb->s_id,
		inode->i_ino, type, acl);
	return acl;
}