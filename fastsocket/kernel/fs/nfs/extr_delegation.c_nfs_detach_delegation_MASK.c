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
struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_inode {int dummy; } ;
struct nfs_delegation {int dummy; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 struct nfs_delegation* FUNC0 (struct nfs_inode*,struct nfs_delegation*,struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs_delegation *FUNC3(struct nfs_inode *nfsi,
		struct nfs_delegation *delegation,
		struct nfs_server *server)
{
	struct nfs_client *clp = server->nfs_client;

	FUNC1(&clp->cl_lock);
	delegation = FUNC0(nfsi, delegation, clp);
	FUNC2(&clp->cl_lock);
	return delegation;
}