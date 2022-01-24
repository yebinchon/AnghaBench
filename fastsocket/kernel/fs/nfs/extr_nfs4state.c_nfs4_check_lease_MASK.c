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
struct rpc_cred {int dummy; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_state; TYPE_1__* cl_mvops; } ;
struct nfs4_state_maintenance_ops {int (* renew_lease ) (struct nfs_client*,struct rpc_cred*) ;struct rpc_cred* (* get_state_renewal_cred_locked ) (struct nfs_client*) ;} ;
struct TYPE_2__ {struct nfs4_state_maintenance_ops* state_renewal_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4CLNT_LEASE_EXPIRED ; 
 int NFS4ERR_EXPIRED ; 
 struct rpc_cred* FUNC0 (struct nfs_client*) ; 
 int FUNC1 (struct nfs_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rpc_cred* FUNC5 (struct nfs_client*) ; 
 int FUNC6 (struct nfs_client*,struct rpc_cred*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct nfs_client *clp)
{
	struct rpc_cred *cred;
	const struct nfs4_state_maintenance_ops *ops =
		clp->cl_mvops->state_renewal_ops;
	int status = -NFS4ERR_EXPIRED;

	/* Is the client already known to have an expired lease? */
	if (FUNC7(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
		return 0;
	FUNC3(&clp->cl_lock);
	cred = ops->get_state_renewal_cred_locked(clp);
	FUNC4(&clp->cl_lock);
	if (cred == NULL) {
		cred = FUNC0(clp);
		if (cred == NULL)
			goto out;
	}
	status = ops->renew_lease(clp, cred);
	FUNC2(cred);
out:
	return FUNC1(clp, status);
}