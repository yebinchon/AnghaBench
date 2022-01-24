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
struct TYPE_2__ {int /*<<< orphan*/  xpt_flags; } ;
struct svcxprt_rdma {TYPE_1__ sc_xprt; int /*<<< orphan*/  sc_send_wait; int /*<<< orphan*/  sc_sq_count; struct ib_cq* sc_sq_cq; int /*<<< orphan*/  sc_flags; } ;
struct svc_rdma_op_ctxt {int dummy; } ;
struct ib_wc {scalar_t__ status; scalar_t__ wr_id; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 scalar_t__ IB_WC_SUCCESS ; 
 int /*<<< orphan*/  RDMAXPRT_SQ_PENDING ; 
 int /*<<< orphan*/  XPT_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ib_cq*,int,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_cq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct svcxprt_rdma*,struct svc_rdma_op_ctxt*) ; 
 int /*<<< orphan*/  rdma_stat_sq_poll ; 
 int /*<<< orphan*/  rdma_stat_sq_prod ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct svcxprt_rdma *xprt)
{
	struct svc_rdma_op_ctxt *ctxt = NULL;
	struct ib_wc wc;
	struct ib_cq *cq = xprt->sc_sq_cq;
	int ret;

	if (!FUNC7(RDMAXPRT_SQ_PENDING, &xprt->sc_flags))
		return;

	FUNC3(xprt->sc_sq_cq, IB_CQ_NEXT_COMP);
	FUNC1(&rdma_stat_sq_poll);
	while ((ret = FUNC2(cq, 1, &wc)) > 0) {
		if (wc.status != IB_WC_SUCCESS)
			/* Close the transport */
			FUNC5(XPT_CLOSE, &xprt->sc_xprt.xpt_flags);

		/* Decrement used SQ WR count */
		FUNC0(&xprt->sc_sq_count);
		FUNC8(&xprt->sc_send_wait);

		ctxt = (struct svc_rdma_op_ctxt *)(unsigned long)wc.wr_id;
		if (ctxt)
			FUNC4(xprt, ctxt);

		FUNC6(&xprt->sc_xprt);
	}

	if (ctxt)
		FUNC1(&rdma_stat_sq_prod);
}