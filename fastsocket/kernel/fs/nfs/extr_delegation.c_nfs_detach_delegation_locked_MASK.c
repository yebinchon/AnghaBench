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
struct nfs_inode {int /*<<< orphan*/  delegation; scalar_t__ delegation_state; } ;
struct nfs_delegation {int /*<<< orphan*/  lock; int /*<<< orphan*/ * inode; int /*<<< orphan*/  super_list; int /*<<< orphan*/  flags; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DELEGATION_RETURNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nfs_delegation* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs_delegation *
FUNC7(struct nfs_inode *nfsi,
		struct nfs_delegation *delegation,
		struct nfs_client *clp)
{
	struct nfs_delegation *deleg_cur =
		FUNC3(nfsi->delegation,
				FUNC1(&clp->cl_lock));

	if (deleg_cur == NULL || delegation != deleg_cur)
		return NULL;

	FUNC5(&delegation->lock);
	FUNC4(NFS_DELEGATION_RETURNING, &delegation->flags);
	FUNC0(&delegation->super_list);
	delegation->inode = NULL;
	nfsi->delegation_state = 0;
	FUNC2(nfsi->delegation, NULL);
	FUNC6(&delegation->lock);
	return delegation;
}