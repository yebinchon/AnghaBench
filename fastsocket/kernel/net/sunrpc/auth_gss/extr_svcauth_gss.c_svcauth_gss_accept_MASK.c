#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_15__ {struct kvec* head; } ;
struct TYPE_14__ {int /*<<< orphan*/  cr_group_info; } ;
struct TYPE_13__ {struct kvec* head; } ;
struct svc_rqst {scalar_t__ rq_proc; int /*<<< orphan*/  rq_flavor; TYPE_3__ rq_arg; TYPE_2__ rq_cred; struct gss_svc_data* rq_auth_data; TYPE_1__ rq_res; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  expiry_time; } ;
struct rsc {TYPE_10__ h; TYPE_4__* mechctx; TYPE_2__ cred; } ;
struct TYPE_17__ {int /*<<< orphan*/  len; } ;
struct rpc_gss_wire_cred {int gc_proc; scalar_t__ gc_svc; scalar_t__ gc_seq; TYPE_7__ gc_ctx; } ;
struct kvec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
struct gss_svc_data {struct rsc* rsci; int /*<<< orphan*/ * verf_start; struct rpc_gss_wire_cred clcred; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_16__ {int /*<<< orphan*/  mech_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NEGATIVE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
#define  RPC_GSS_PROC_CONTINUE_INIT 137 
#define  RPC_GSS_PROC_DATA 136 
#define  RPC_GSS_PROC_DESTROY 135 
#define  RPC_GSS_PROC_INIT 134 
#define  RPC_GSS_SVC_INTEGRITY 133 
#define  RPC_GSS_SVC_NONE 132 
#define  RPC_GSS_SVC_PRIVACY 131 
 scalar_t__ RPC_GSS_VERSION ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 int SVC_COMPLETE ; 
#define  SVC_DENIED 130 
#define  SVC_DROP 129 
 int SVC_GARBAGE ; 
#define  SVC_OK 128 
 int /*<<< orphan*/  FUNC0 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct rsc* FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_rqst*,struct rsc*,int /*<<< orphan*/ *,struct rpc_gss_wire_cred*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_rqst*,TYPE_4__*,scalar_t__) ; 
 struct gss_svc_data* FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_autherr_badcred ; 
 int /*<<< orphan*/  rpc_autherr_badverf ; 
 int /*<<< orphan*/  rpc_autherr_rejectedcred ; 
 int /*<<< orphan*/  rpcsec_gsserr_credproblem ; 
 int /*<<< orphan*/  rpcsec_gsserr_ctxproblem ; 
 int /*<<< orphan*/  rsc_cache ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct kvec*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct kvec*,TYPE_7__*) ; 
 int FUNC15 (struct svc_rqst*,struct rpc_gss_wire_cred*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct svc_rqst*,TYPE_3__*,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (struct svc_rqst*,TYPE_3__*,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(struct svc_rqst *rqstp, __be32 *authp)
{
	struct kvec	*argv = &rqstp->rq_arg.head[0];
	struct kvec	*resv = &rqstp->rq_res.head[0];
	u32		crlen;
	struct gss_svc_data *svcdata = rqstp->rq_auth_data;
	struct rpc_gss_wire_cred *gc;
	struct rsc	*rsci = NULL;
	__be32		*rpcstart;
	__be32		*reject_stat = resv->iov_base + resv->iov_len;
	int		ret;

	FUNC2("RPC:       svcauth_gss: argv->iov_len = %zd\n",
			argv->iov_len);

	*authp = rpc_autherr_badcred;
	if (!svcdata)
		svcdata = FUNC9(sizeof(*svcdata), GFP_KERNEL);
	if (!svcdata)
		goto auth_err;
	rqstp->rq_auth_data = svcdata;
	svcdata->verf_start = NULL;
	svcdata->rsci = NULL;
	gc = &svcdata->clcred;

	/* start of rpc packet is 7 u32's back from here:
	 * xid direction rpcversion prog vers proc flavour
	 */
	rpcstart = argv->iov_base;
	rpcstart -= 7;

	/* credential is:
	 *   version(==1), proc(0,1,2,3), seq, service (1,2,3), handle
	 * at least 5 u32s, and is preceeded by length, so that makes 6.
	 */

	if (argv->iov_len < 5 * 4)
		goto auth_err;
	crlen = FUNC12(argv);
	if (FUNC12(argv) != RPC_GSS_VERSION)
		goto auth_err;
	gc->gc_proc = FUNC12(argv);
	gc->gc_seq = FUNC12(argv);
	gc->gc_svc = FUNC12(argv);
	if (FUNC14(argv, &gc->gc_ctx))
		goto auth_err;
	if (crlen != FUNC10(gc->gc_ctx.len) + 5 * 4)
		goto auth_err;

	if ((gc->gc_proc != RPC_GSS_PROC_DATA) && (rqstp->rq_proc != 0))
		goto auth_err;

	*authp = rpc_autherr_badverf;
	switch (gc->gc_proc) {
	case RPC_GSS_PROC_INIT:
	case RPC_GSS_PROC_CONTINUE_INIT:
		return FUNC15(rqstp, gc, authp);
	case RPC_GSS_PROC_DATA:
	case RPC_GSS_PROC_DESTROY:
		/* Look up the context, and check the verifier: */
		*authp = rpcsec_gsserr_credproblem;
		rsci = FUNC5(&gc->gc_ctx);
		if (!rsci)
			goto auth_err;
		switch (FUNC7(rqstp, rsci, rpcstart, gc, authp)) {
		case SVC_OK:
			break;
		case SVC_DENIED:
			goto auth_err;
		case SVC_DROP:
			goto drop;
		}
		break;
	default:
		*authp = rpc_autherr_rejectedcred;
		goto auth_err;
	}

	/* now act upon the command: */
	switch (gc->gc_proc) {
	case RPC_GSS_PROC_DESTROY:
		if (FUNC8(rqstp, rsci->mechctx, gc->gc_seq))
			goto auth_err;
		rsci->h.expiry_time = FUNC4();
		FUNC11(CACHE_NEGATIVE, &rsci->h.flags);
		if (resv->iov_len + 4 > PAGE_SIZE)
			goto drop;
		FUNC13(resv, RPC_SUCCESS);
		goto complete;
	case RPC_GSS_PROC_DATA:
		*authp = rpcsec_gsserr_ctxproblem;
		svcdata->verf_start = resv->iov_base + resv->iov_len;
		if (FUNC8(rqstp, rsci->mechctx, gc->gc_seq))
			goto auth_err;
		rqstp->rq_cred = rsci->cred;
		FUNC3(rsci->cred.cr_group_info);
		*authp = rpc_autherr_badcred;
		switch (gc->gc_svc) {
		case RPC_GSS_SVC_NONE:
			break;
		case RPC_GSS_SVC_INTEGRITY:
			/* placeholders for length and seq. number: */
			FUNC13(resv, 0);
			FUNC13(resv, 0);
			if (FUNC16(rqstp, &rqstp->rq_arg,
					gc->gc_seq, rsci->mechctx))
				goto garbage_args;
			break;
		case RPC_GSS_SVC_PRIVACY:
			/* placeholders for length and seq. number: */
			FUNC13(resv, 0);
			FUNC13(resv, 0);
			if (FUNC17(rqstp, &rqstp->rq_arg,
					gc->gc_seq, rsci->mechctx))
				goto garbage_args;
			break;
		default:
			goto auth_err;
		}
		svcdata->rsci = rsci;
		FUNC0(&rsci->h);
		rqstp->rq_flavor = FUNC6(
					rsci->mechctx->mech_type, gc->gc_svc);
		ret = SVC_OK;
		goto out;
	}
garbage_args:
	ret = SVC_GARBAGE;
	goto out;
auth_err:
	/* Restore write pointer to its original value: */
	FUNC18(rqstp, reject_stat);
	ret = SVC_DENIED;
	goto out;
complete:
	ret = SVC_COMPLETE;
	goto out;
drop:
	ret = SVC_DROP;
out:
	if (rsci)
		FUNC1(&rsci->h, &rsc_cache);
	return ret;
}