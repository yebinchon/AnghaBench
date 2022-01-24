#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xdr_netobj {scalar_t__ len; } ;
struct TYPE_5__ {struct kvec* head; } ;
struct TYPE_4__ {struct kvec* head; } ;
struct svc_rqst {int /*<<< orphan*/  rq_chandle; TYPE_2__ rq_res; TYPE_1__ rq_arg; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct rsi {int /*<<< orphan*/  h; int /*<<< orphan*/  out_token; int /*<<< orphan*/  minor_status; int /*<<< orphan*/  major_status; int /*<<< orphan*/  out_handle; TYPE_3__ in_handle; TYPE_3__ in_token; } ;
struct rpc_gss_wire_cred {scalar_t__ gc_proc; struct xdr_netobj gc_ctx; } ;
struct kvec {int iov_len; } ;
typedef  int /*<<< orphan*/  rsikey ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_SEQ_WIN ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ RPC_AUTH_NULL ; 
 scalar_t__ RPC_GSS_PROC_INIT ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 int SVC_CLOSE ; 
 int SVC_COMPLETE ; 
 int SVC_DENIED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*,struct xdr_netobj*) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,struct rsi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rsi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rpc_autherr_badcred ; 
 int /*<<< orphan*/  rpc_autherr_badverf ; 
 int /*<<< orphan*/  rsi_cache ; 
 int /*<<< orphan*/  FUNC6 (struct rsi*) ; 
 struct rsi* FUNC7 (struct rsi*) ; 
 scalar_t__ FUNC8 (struct kvec*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct kvec*,struct xdr_netobj*) ; 
 scalar_t__ FUNC11 (struct kvec*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct svc_rqst *rqstp,
			struct rpc_gss_wire_cred *gc, __be32 *authp)
{
	struct kvec *argv = &rqstp->rq_arg.head[0];
	struct kvec *resv = &rqstp->rq_res.head[0];
	struct xdr_netobj tmpobj;
	struct rsi *rsip, rsikey;
	int ret;

	/* Read the verifier; should be NULL: */
	*authp = rpc_autherr_badverf;
	if (argv->iov_len < 2 * 4)
		return SVC_DENIED;
	if (FUNC8(argv) != RPC_AUTH_NULL)
		return SVC_DENIED;
	if (FUNC8(argv) != 0)
		return SVC_DENIED;

	/* Martial context handle and token for upcall: */
	*authp = rpc_autherr_badcred;
	if (gc->gc_proc == RPC_GSS_PROC_INIT && gc->gc_ctx.len != 0)
		return SVC_DENIED;
	FUNC5(&rsikey, 0, sizeof(rsikey));
	if (FUNC2(&rsikey.in_handle, &gc->gc_ctx))
		return SVC_CLOSE;
	*authp = rpc_autherr_badverf;
	if (FUNC10(argv, &tmpobj)) {
		FUNC4(rsikey.in_handle.data);
		return SVC_DENIED;
	}
	if (FUNC2(&rsikey.in_token, &tmpobj)) {
		FUNC4(rsikey.in_handle.data);
		return SVC_CLOSE;
	}

	/* Perform upcall, or find upcall result: */
	rsip = FUNC7(&rsikey);
	FUNC6(&rsikey);
	if (!rsip)
		return SVC_CLOSE;
	if (FUNC0(&rsi_cache, &rsip->h, &rqstp->rq_chandle) < 0)
		/* No upcall result: */
		return SVC_CLOSE;

	ret = SVC_CLOSE;
	/* Got an answer to the upcall; use it: */
	if (FUNC3(rqstp, rsip))
		goto out;
	if (resv->iov_len + 4 > PAGE_SIZE)
		goto out;
	FUNC9(resv, RPC_SUCCESS);
	if (FUNC11(resv, &rsip->out_handle))
		goto out;
	if (resv->iov_len + 3 * 4 > PAGE_SIZE)
		goto out;
	FUNC9(resv, rsip->major_status);
	FUNC9(resv, rsip->minor_status);
	FUNC9(resv, GSS_SEQ_WIN);
	if (FUNC11(resv, &rsip->out_token))
		goto out;

	ret = SVC_COMPLETE;
out:
	FUNC1(&rsip->h, &rsi_cache);
	return ret;
}