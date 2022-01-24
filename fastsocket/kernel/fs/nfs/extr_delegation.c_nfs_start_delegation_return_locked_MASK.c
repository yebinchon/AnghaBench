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
struct nfs_inode {int /*<<< orphan*/  delegation; } ;
struct nfs_delegation {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DELEGATION_RETURNING ; 
 struct nfs_delegation* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs_delegation *
FUNC4(struct nfs_inode *nfsi)
{
	struct nfs_delegation *ret = NULL;
	struct nfs_delegation *delegation = FUNC0(nfsi->delegation);

	if (delegation == NULL)
		goto out;
	FUNC1(&delegation->lock);
	if (!FUNC3(NFS_DELEGATION_RETURNING, &delegation->flags))
		ret = delegation;
	FUNC2(&delegation->lock);
out:
	return ret;
}