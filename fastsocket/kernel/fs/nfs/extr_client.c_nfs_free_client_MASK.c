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
struct nfs_client {struct nfs_client* cl_hostname; int /*<<< orphan*/ * cl_machine_cred; int /*<<< orphan*/  cl_rpcclient; TYPE_1__* rpc_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct nfs_client *clp)
{
	FUNC1("--> nfs_free_client(%u)\n", clp->rpc_ops->version);

	FUNC3(clp);

	FUNC4(clp);

	/* -EIO all pending I/O */
	if (!FUNC0(clp->cl_rpcclient))
		FUNC6(clp->cl_rpcclient);

	if (clp->cl_machine_cred != NULL)
		FUNC5(clp->cl_machine_cred);

	FUNC2(clp->cl_hostname);
	FUNC2(clp);

	FUNC1("<-- nfs_free_client()\n");
}