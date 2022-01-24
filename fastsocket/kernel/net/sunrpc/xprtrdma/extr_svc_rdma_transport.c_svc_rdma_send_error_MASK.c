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
typedef  int /*<<< orphan*/  u32 ;
struct svcxprt_rdma {int /*<<< orphan*/  sc_dma_lkey; int /*<<< orphan*/  sc_dma_used; TYPE_1__* sc_cm_id; } ;
struct svc_rdma_op_ctxt {int count; TYPE_2__* sge; void* wr_op; struct page** pages; int /*<<< orphan*/  direction; } ;
struct rpcrdma_msg {int dummy; } ;
struct page {int dummy; } ;
struct ib_send_wr {unsigned long wr_id; int num_sge; int /*<<< orphan*/  send_flags; void* opcode; TYPE_2__* sg_list; } ;
typedef  enum rpcrdma_errcode { ____Placeholder_rpcrdma_errcode } rpcrdma_errcode ;
struct TYPE_4__ {int length; int /*<<< orphan*/  lkey; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  IB_SEND_SIGNALED ; 
 void* IB_WR_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_send_wr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct svc_rdma_op_ctxt* FUNC7 (struct svcxprt_rdma*) ; 
 struct page* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct svc_rdma_op_ctxt*,int) ; 
 int FUNC10 (struct svcxprt_rdma*,struct ib_send_wr*) ; 
 int /*<<< orphan*/  FUNC11 (struct svc_rdma_op_ctxt*) ; 
 int FUNC12 (struct svcxprt_rdma*,struct rpcrdma_msg*,int,int /*<<< orphan*/ *) ; 

void FUNC13(struct svcxprt_rdma *xprt, struct rpcrdma_msg *rmsgp,
			 enum rpcrdma_errcode err)
{
	struct ib_send_wr err_wr;
	struct page *p;
	struct svc_rdma_op_ctxt *ctxt;
	u32 *va;
	int length;
	int ret;

	p = FUNC8();
	va = FUNC5(p);

	/* XDR encode error */
	length = FUNC12(xprt, rmsgp, err, va);

	ctxt = FUNC7(xprt);
	ctxt->direction = DMA_FROM_DEVICE;
	ctxt->count = 1;
	ctxt->pages[0] = p;

	/* Prepare SGE for local address */
	ctxt->sge[0].addr = FUNC2(xprt->sc_cm_id->device,
					    p, 0, length, DMA_FROM_DEVICE);
	if (FUNC3(xprt->sc_cm_id->device, ctxt->sge[0].addr)) {
		FUNC6(p);
		FUNC9(ctxt, 1);
		return;
	}
	FUNC0(&xprt->sc_dma_used);
	ctxt->sge[0].lkey = xprt->sc_dma_lkey;
	ctxt->sge[0].length = length;

	/* Prepare SEND WR */
	FUNC4(&err_wr, 0, sizeof err_wr);
	ctxt->wr_op = IB_WR_SEND;
	err_wr.wr_id = (unsigned long)ctxt;
	err_wr.sg_list = ctxt->sge;
	err_wr.num_sge = 1;
	err_wr.opcode = IB_WR_SEND;
	err_wr.send_flags = IB_SEND_SIGNALED;

	/* Post It */
	ret = FUNC10(xprt, &err_wr);
	if (ret) {
		FUNC1("svcrdma: Error %d posting send for protocol error\n",
			ret);
		FUNC11(ctxt);
		FUNC9(ctxt, 1);
	}
}