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
struct nfs_client {int /*<<< orphan*/ * cl_machine_cred; } ;

/* Variables and functions */
 struct rpc_cred* FUNC0 (int /*<<< orphan*/ *) ; 

struct rpc_cred *FUNC1(struct nfs_client *clp)
{
	struct rpc_cred *cred = NULL;

	if (clp->cl_machine_cred != NULL)
		cred = FUNC0(clp->cl_machine_cred);
	return cred;
}