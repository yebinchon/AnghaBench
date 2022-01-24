#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  xpt_flags; } ;
struct svcxprt_rdma {TYPE_1__ sc_xprt; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_rq_dto_lock; int /*<<< orphan*/  sc_rq_dto_q; int /*<<< orphan*/  sc_rq_cq; } ;
struct svc_rdma_op_ctxt {scalar_t__ wc_status; int /*<<< orphan*/  dto_q; int /*<<< orphan*/  byte_len; } ;
struct ib_wc {scalar_t__ status; int /*<<< orphan*/  byte_len; scalar_t__ wr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 scalar_t__ IB_WC_SUCCESS ; 
 int /*<<< orphan*/  RDMAXPRT_CONN_PENDING ; 
 int /*<<< orphan*/  RDMAXPRT_RQ_PENDING ; 
 int /*<<< orphan*/  XPT_CLOSE ; 
 int /*<<< orphan*/  XPT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct svc_rdma_op_ctxt*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdma_stat_rq_poll ; 
 int /*<<< orphan*/  rdma_stat_rq_prod ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_rdma_op_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_rdma_op_ctxt*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct svcxprt_rdma *xprt)
{
	int ret;
	struct ib_wc wc;
	struct svc_rdma_op_ctxt *ctxt = NULL;

	if (!FUNC12(RDMAXPRT_RQ_PENDING, &xprt->sc_flags))
		return;

	FUNC3(xprt->sc_rq_cq, IB_CQ_NEXT_COMP);
	FUNC0(&rdma_stat_rq_poll);

	while ((ret = FUNC2(xprt->sc_rq_cq, 1, &wc)) > 0) {
		ctxt = (struct svc_rdma_op_ctxt *)(unsigned long)wc.wr_id;
		ctxt->wc_status = wc.status;
		ctxt->byte_len = wc.byte_len;
		FUNC9(ctxt);
		if (wc.status != IB_WC_SUCCESS) {
			/* Close the transport */
			FUNC1("svcrdma: transport closing putting ctxt %p\n", ctxt);
			FUNC5(XPT_CLOSE, &xprt->sc_xprt.xpt_flags);
			FUNC8(ctxt, 1);
			FUNC11(&xprt->sc_xprt);
			continue;
		}
		FUNC6(&xprt->sc_rq_dto_lock);
		FUNC4(&ctxt->dto_q, &xprt->sc_rq_dto_q);
		FUNC7(&xprt->sc_rq_dto_lock);
		FUNC11(&xprt->sc_xprt);
	}

	if (ctxt)
		FUNC0(&rdma_stat_rq_prod);

	FUNC5(XPT_DATA, &xprt->sc_xprt.xpt_flags);
	/*
	 * If data arrived before established event,
	 * don't enqueue. This defers RPC I/O until the
	 * RDMA connection is complete.
	 */
	if (!FUNC13(RDMAXPRT_CONN_PENDING, &xprt->sc_flags))
		FUNC10(&xprt->sc_xprt);
}