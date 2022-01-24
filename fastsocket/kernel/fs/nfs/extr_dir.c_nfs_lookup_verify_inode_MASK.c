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
struct nfs_server {int flags; } ;
struct nameidata {int flags; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LOOKUP_OPEN ; 
 int LOOKUP_REVAL ; 
 int NFS_MOUNT_NOCTO ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nfs_server*,struct inode*) ; 
 scalar_t__ FUNC5 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nfs_server*,struct inode*) ; 

__attribute__((used)) static inline
int FUNC7(struct inode *inode, struct nameidata *nd)
{
	struct nfs_server *server = FUNC1(inode);

	if (FUNC0(inode))
		return 0;
	if (nd != NULL) {
		/* VFS wants an on-the-wire revalidation */
		if (nd->flags & LOOKUP_REVAL)
			goto out_force;
		/* This is an open(2) */
		if (FUNC5(nd, LOOKUP_OPEN) != 0 &&
				!(server->flags & NFS_MOUNT_NOCTO) &&
				(FUNC3(inode->i_mode) ||
				 FUNC2(inode->i_mode)))
			goto out_force;
		return 0;
	}
	return FUNC6(server, inode);
out_force:
	return FUNC4(server, inode);
}