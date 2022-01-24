#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_client {int /*<<< orphan*/  cl_cb_set; int /*<<< orphan*/  cl_delegations; } ;
struct TYPE_5__ {int /*<<< orphan*/  cl_id; int /*<<< orphan*/  cl_boot; } ;
typedef  TYPE_1__ clientid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct nfs4_client* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_cb_path_down ; 
 int /*<<< orphan*/  nfserr_expired ; 
 int /*<<< orphan*/  nfserr_stale_clientid ; 
 int /*<<< orphan*/  FUNC7 (struct nfs4_client*) ; 

__be32
FUNC8(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	    clientid_t *clid)
{
	struct nfs4_client *clp;
	__be32 status;

	FUNC5();
	FUNC2("process_renew(%08x/%08x): starting\n", 
			clid->cl_boot, clid->cl_id);
	status = nfserr_stale_clientid;
	if (FUNC0(clid))
		goto out;
	clp = FUNC3(clid);
	status = nfserr_expired;
	if (clp == NULL) {
		/* We assume the client took too long to RENEW. */
		FUNC2("nfsd4_renew: clientid not found!\n");
		goto out;
	}
	FUNC7(clp);
	status = nfserr_cb_path_down;
	if (!FUNC4(&clp->cl_delegations)
			&& !FUNC1(&clp->cl_cb_set))
		goto out;
	status = nfs_ok;
out:
	FUNC6();
	return status;
}