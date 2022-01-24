#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cl_id; } ;
struct nfsd4_open {int op_seqid; struct nfs4_stateowner* op_stateowner; int /*<<< orphan*/  op_owner; TYPE_2__ op_clientid; } ;
struct nfsd4_compound_state {int dummy; } ;
struct TYPE_5__ {scalar_t__ rp_buflen; } ;
struct nfs4_stateowner {int so_seqid; struct nfs4_client* so_client; int /*<<< orphan*/  so_close_lru; TYPE_1__ so_replay; int /*<<< orphan*/  so_confirmed; } ;
struct nfs4_client {int dummy; } ;
typedef  TYPE_2__ clientid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 struct nfs4_stateowner* FUNC1 (unsigned int,struct nfs4_client*,struct nfsd4_open*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct nfs4_client* FUNC4 (TYPE_2__*) ; 
 struct nfs4_stateowner* FUNC5 (unsigned int,struct nfsd4_open*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_ok ; 
 scalar_t__ FUNC7 (struct nfsd4_compound_state*) ; 
 int /*<<< orphan*/  nfserr_bad_seqid ; 
 int /*<<< orphan*/  nfserr_expired ; 
 int /*<<< orphan*/  nfserr_inval ; 
 int /*<<< orphan*/  nfserr_replay_me ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/  nfserr_stale_clientid ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs4_stateowner*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs4_client*) ; 

__be32
FUNC11(struct nfsd4_compound_state *cstate,
		    struct nfsd4_open *open)
{
	clientid_t *clientid = &open->op_clientid;
	struct nfs4_client *clp = NULL;
	unsigned int strhashval;
	struct nfs4_stateowner *sop = NULL;

	if (!FUNC2(open->op_owner))
		return nfserr_inval;

	if (FUNC0(&open->op_clientid))
		return nfserr_stale_clientid;

	strhashval = FUNC8(clientid->cl_id, open->op_owner);
	sop = FUNC5(strhashval, open);
	open->op_stateowner = sop;
	if (!sop) {
		/* Make sure the client's lease hasn't expired. */
		clp = FUNC4(clientid);
		if (clp == NULL)
			return nfserr_expired;
		goto renew;
	}
	/* When sessions are used, skip open sequenceid processing */
	if (FUNC7(cstate))
		goto renew;
	if (!sop->so_confirmed) {
		/* Replace unconfirmed owners without checking for replay. */
		clp = sop->so_client;
		FUNC9(sop);
		open->op_stateowner = NULL;
		goto renew;
	}
	if (open->op_seqid == sop->so_seqid - 1) {
		if (sop->so_replay.rp_buflen)
			return nfserr_replay_me;
		/* The original OPEN failed so spectacularly
		 * that we don't even have replay data saved!
		 * Therefore, we have no choice but to continue
		 * processing this OPEN; presumably, we'll
		 * fail again for the same reason.
		 */
		FUNC3("nfsd4_process_open1: replay with no replay cache\n");
		goto renew;
	}
	if (open->op_seqid != sop->so_seqid)
		return nfserr_bad_seqid;
renew:
	if (open->op_stateowner == NULL) {
		sop = FUNC1(strhashval, clp, open);
		if (sop == NULL)
			return nfserr_resource;
		open->op_stateowner = sop;
	}
	FUNC6(&sop->so_close_lru);
	FUNC10(sop->so_client);
	return nfs_ok;
}