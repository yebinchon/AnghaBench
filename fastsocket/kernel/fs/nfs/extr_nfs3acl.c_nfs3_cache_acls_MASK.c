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
struct nfs_inode {void* acl_default; void* acl_access; } ;
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct posix_acl*) ; 
 struct nfs_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct posix_acl*,struct posix_acl*) ; 
 void* FUNC4 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, struct posix_acl *acl,
		    struct posix_acl *dfacl)
{
	struct nfs_inode *nfsi = FUNC1(inode);

	FUNC3("nfs3_cache_acls(%s/%ld, %p, %p)\n", inode->i_sb->s_id,
		inode->i_ino, acl, dfacl);
	FUNC5(&inode->i_lock);
	FUNC2(FUNC1(inode));
	if (!FUNC0(acl))
		nfsi->acl_access = FUNC4(acl);
	if (!FUNC0(dfacl))
		nfsi->acl_default = FUNC4(dfacl);
	FUNC6(&inode->i_lock);
}