#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct nfsd4_delegreturn {int /*<<< orphan*/  dr_stateid; } ;
struct TYPE_4__ {TYPE_1__* fh_dentry; } ;
struct nfsd4_compound_state {TYPE_2__ current_fh; } ;
struct nfs4_delegation {int /*<<< orphan*/  dl_client; int /*<<< orphan*/  dl_stateid; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  scalar_t__ __be32 ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int HAS_SESSION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_IFREG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct svc_rqst*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfs4_delegation* FUNC5 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct nfsd4_compound_state*) ; 
 scalar_t__ nfserr_bad_stateid ; 
 scalar_t__ nfserr_expired ; 
 scalar_t__ nfserr_stale_stateid ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs4_delegation*) ; 

__be32
FUNC12(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
		  struct nfsd4_delegreturn *dr)
{
	struct nfs4_delegation *dp;
	stateid_t *stateid = &dr->dr_stateid;
	struct inode *inode;
	__be32 status;
	int flags = 0;

	if ((status = FUNC4(rqstp, &cstate->current_fh, S_IFREG, 0)))
		return status;
	inode = cstate->current_fh.fh_dentry->d_inode;

	if (FUNC9(cstate))
		flags |= HAS_SESSION;
	FUNC7();
	status = nfserr_bad_stateid;
	if (FUNC2(stateid) || FUNC0(stateid))
		goto out;
	status = nfserr_stale_stateid;
	if (FUNC1(stateid))
		goto out;
	status = nfserr_bad_stateid;
	if (!FUNC6(stateid))
		goto out;
	status = nfserr_expired;
	dp = FUNC5(inode, stateid);
	if (!dp)
		goto out;
	status = FUNC3(stateid, &dp->dl_stateid, flags);
	if (status)
		goto out;
	FUNC10(dp->dl_client);

	FUNC11(dp);
out:
	FUNC8();

	return status;
}