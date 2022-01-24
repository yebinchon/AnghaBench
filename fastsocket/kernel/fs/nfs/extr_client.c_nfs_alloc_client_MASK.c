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
struct nfs_client_initdata {size_t minorversion; int /*<<< orphan*/  proto; scalar_t__ hostname; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; int /*<<< orphan*/  rpc_ops; } ;
struct nfs_client {int cl_state; size_t cl_minorversion; struct rpc_cred* cl_machine_cred; int /*<<< orphan*/  cl_mvops; int /*<<< orphan*/  cl_boot_time; int /*<<< orphan*/  cl_rpcwaitq; int /*<<< orphan*/  cl_renewd; int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_proto; struct nfs_client* cl_rpcclient; int /*<<< orphan*/  cl_superblocks; int /*<<< orphan*/  cl_hostname; int /*<<< orphan*/  cl_addrlen; int /*<<< orphan*/  cl_addr; int /*<<< orphan*/  cl_cons_state; int /*<<< orphan*/  cl_count; int /*<<< orphan*/  rpc_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct nfs_client* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_cred*) ; 
 int NFS4CLNT_LEASE_EXPIRED ; 
 int /*<<< orphan*/  NFS_CS_INITING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct nfs_client* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs4_renew_state ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_client*) ; 
 int FUNC10 (struct nfs_client*,size_t) ; 
 int /*<<< orphan*/ * nfs_v4_minor_ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 struct rpc_cred* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs_client *FUNC14(const struct nfs_client_initdata *cl_init)
{
	struct nfs_client *clp;
	struct rpc_cred *cred;
	int err = -ENOMEM;

	if ((clp = FUNC7(sizeof(*clp), GFP_KERNEL)) == NULL)
		goto error_0;

	clp->rpc_ops = cl_init->rpc_ops;

	FUNC4(&clp->cl_count, 1);
	clp->cl_cons_state = NFS_CS_INITING;

	FUNC8(&clp->cl_addr, cl_init->addr, cl_init->addrlen);
	clp->cl_addrlen = cl_init->addrlen;

	if (cl_init->hostname) {
		err = -ENOMEM;
		clp->cl_hostname = FUNC6(cl_init->hostname, GFP_KERNEL);
		if (!clp->cl_hostname)
			goto error_cleanup;
	}

	FUNC2(&clp->cl_superblocks);
	clp->cl_rpcclient = FUNC0(-EINVAL);

	clp->cl_proto = cl_init->proto;

#ifdef CONFIG_NFS_V4
	err = nfs_get_cb_ident_idr(clp, cl_init->minorversion);
	if (err)
		goto error_cleanup;

	spin_lock_init(&clp->cl_lock);
	INIT_DELAYED_WORK(&clp->cl_renewd, nfs4_renew_state);
	rpc_init_wait_queue(&clp->cl_rpcwaitq, "NFS client");
	clp->cl_boot_time = CURRENT_TIME;
	clp->cl_state = 1 << NFS4CLNT_LEASE_EXPIRED;
	clp->cl_minorversion = cl_init->minorversion;
	clp->cl_mvops = nfs_v4_minor_ops[cl_init->minorversion];
#endif
	cred = FUNC12();
	if (!FUNC3(cred))
		clp->cl_machine_cred = cred;
	FUNC9(clp);

	return clp;

error_cleanup:
	FUNC5(clp);
error_0:
	return FUNC0(err);
}