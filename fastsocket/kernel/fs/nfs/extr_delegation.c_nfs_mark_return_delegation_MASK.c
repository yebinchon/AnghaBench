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
struct nfs_delegation {int /*<<< orphan*/  flags; int /*<<< orphan*/  inode; } ;
struct nfs_client {int /*<<< orphan*/  cl_state; } ;
struct TYPE_2__ {struct nfs_client* nfs_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4CLNT_DELEGRETURN ; 
 int /*<<< orphan*/  NFS_DELEGATION_RETURN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nfs_delegation *delegation)
{
	struct nfs_client *clp = FUNC0(delegation->inode)->nfs_client;

	FUNC1(NFS_DELEGATION_RETURN, &delegation->flags);
	FUNC1(NFS4CLNT_DELEGRETURN, &clp->cl_state);
}