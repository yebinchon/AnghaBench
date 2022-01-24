#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {struct nfsd4_compoundres* rq_resp; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; scalar_t__ len; } ;
struct nfsd4_open {int op_claim_type; TYPE_3__* op_stateowner; int /*<<< orphan*/  op_clientid; scalar_t__ op_create; TYPE_1__ op_fname; } ;
struct nfsd4_compoundres {int /*<<< orphan*/  cstate; } ;
struct TYPE_9__ {int /*<<< orphan*/  fh_handle; } ;
struct nfsd4_compound_state {TYPE_3__* replay_owner; TYPE_2__ current_fh; int /*<<< orphan*/  session; } ;
struct nfs4_replay {int /*<<< orphan*/  rp_openfh; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_10__ {int so_confirmed; struct nfs4_replay so_replay; } ;

/* Variables and functions */
#define  NFS4_OPEN_CLAIM_DELEGATE_CUR 131 
#define  NFS4_OPEN_CLAIM_DELEGATE_PREV 130 
#define  NFS4_OPEN_CLAIM_NULL 129 
#define  NFS4_OPEN_CLAIM_PREVIOUS 128 
 int /*<<< orphan*/  NFSD_MAY_NOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct svc_rqst*,TYPE_2__*,struct nfsd4_open*) ; 
 scalar_t__ FUNC2 (struct svc_rqst*,TYPE_2__*,struct nfsd4_open*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (struct svc_rqst*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (struct svc_rqst*,struct nfsd4_compound_state*,struct nfsd4_open*) ; 
 scalar_t__ FUNC12 (struct nfsd4_compound_state*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct nfsd4_open*) ; 
 scalar_t__ FUNC14 (struct svc_rqst*,TYPE_2__*,struct nfsd4_open*) ; 
 scalar_t__ nfserr_grace ; 
 scalar_t__ nfserr_inval ; 
 scalar_t__ nfserr_no_grace ; 
 scalar_t__ nfserr_notsupp ; 
 scalar_t__ nfserr_replay_me ; 

__attribute__((used)) static __be32
FUNC15(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	   struct nfsd4_open *open)
{
	__be32 status;
	struct nfsd4_compoundres *resp;

	FUNC3("NFSD: nfsd4_open filename %.*s op_stateowner %p\n",
		(int)open->op_fname.len, open->op_fname.data,
		open->op_stateowner);

	/* This check required by spec. */
	if (open->op_create && open->op_claim_type != NFS4_OPEN_CLAIM_NULL)
		return nfserr_inval;

	if (FUNC12(cstate))
		FUNC0(&open->op_clientid, cstate->session);

	FUNC9();

	/* check seqid for replay. set nfs4_owner */
	resp = rqstp->rq_resp;
	status = FUNC13(&resp->cstate, open);
	if (status == nfserr_replay_me) {
		struct nfs4_replay *rp = &open->op_stateowner->so_replay;
		FUNC5(&cstate->current_fh);
		FUNC4(&cstate->current_fh.fh_handle,
				&rp->rp_openfh);
		status = FUNC6(rqstp, &cstate->current_fh, 0, NFSD_MAY_NOP);
		if (status)
			FUNC3("nfsd4_open: replay failed"
				" restoring previous filehandle\n");
		else
			status = nfserr_replay_me;
	}
	if (status)
		goto out;

	status = FUNC11(rqstp, cstate, open);
	if (status)
		goto out;

	/* Openowner is now set, so sequence id will get bumped.  Now we need
	 * these checks before we do any creates: */
	status = nfserr_grace;
	if (FUNC7() && open->op_claim_type != NFS4_OPEN_CLAIM_PREVIOUS)
		goto out;
	status = nfserr_no_grace;
	if (!FUNC7() && open->op_claim_type == NFS4_OPEN_CLAIM_PREVIOUS)
		goto out;

	switch (open->op_claim_type) {
		case NFS4_OPEN_CLAIM_DELEGATE_CUR:
		case NFS4_OPEN_CLAIM_NULL:
			/*
			 * (1) set CURRENT_FH to the file being opened,
			 * creating it if necessary, (2) set open->op_cinfo,
			 * (3) set open->op_truncate if the file is to be
			 * truncated after opening, (4) do permission checking.
			 */
			status = FUNC2(rqstp, &cstate->current_fh,
						open);
			if (status)
				goto out;
			break;
		case NFS4_OPEN_CLAIM_PREVIOUS:
			open->op_stateowner->so_confirmed = 1;
			/*
			 * The CURRENT_FH is already set to the file being
			 * opened.  (1) set open->op_cinfo, (2) set
			 * open->op_truncate if the file is to be truncated
			 * after opening, (3) do permission checking.
			*/
			status = FUNC1(rqstp, &cstate->current_fh,
						 open);
			if (status)
				goto out;
			break;
             	case NFS4_OPEN_CLAIM_DELEGATE_PREV:
			open->op_stateowner->so_confirmed = 1;
			FUNC3("NFSD: unsupported OPEN claim type %d\n",
				open->op_claim_type);
			status = nfserr_notsupp;
			goto out;
		default:
			FUNC3("NFSD: Invalid OPEN claim type %d\n",
				open->op_claim_type);
			status = nfserr_inval;
			goto out;
	}
	/*
	 * nfsd4_process_open2() does the actual opening of the file.  If
	 * successful, it (1) truncates the file if open->op_truncate was
	 * set, (2) sets open->op_stateid, (3) sets open->op_delegation.
	 */
	status = FUNC14(rqstp, &cstate->current_fh, open);
out:
	if (open->op_stateowner) {
		FUNC8(open->op_stateowner);
		cstate->replay_owner = open->op_stateowner;
	}
	FUNC10();
	return status;
}