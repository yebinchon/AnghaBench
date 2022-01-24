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
struct rpc_cred {int dummy; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; struct rpc_cred* cl_machine_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfs_client *clp)
{
	struct rpc_cred *cred;

	FUNC1(&clp->cl_lock);
	cred = clp->cl_machine_cred;
	clp->cl_machine_cred = NULL;
	FUNC2(&clp->cl_lock);
	if (cred != NULL)
		FUNC0(cred);
}