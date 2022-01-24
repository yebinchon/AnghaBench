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
typedef  scalar_t__ u64 ;
struct svcxprt_rdma {int sc_max_req_size; int sc_max_sge; int /*<<< orphan*/  sc_xprt; int /*<<< orphan*/  sc_qp; int /*<<< orphan*/  sc_dma_lkey; int /*<<< orphan*/  sc_dma_used; TYPE_1__* sc_cm_id; } ;
struct svc_rdma_op_ctxt {int count; TYPE_2__* sge; struct page** pages; int /*<<< orphan*/  direction; } ;
struct page {int dummy; } ;
struct ib_recv_wr {int num_sge; scalar_t__ wr_id; TYPE_2__* sg_list; int /*<<< orphan*/ * next; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  lkey; scalar_t__ length; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ib_recv_wr*,struct ib_recv_wr**) ; 
 struct svc_rdma_op_ctxt* FUNC5 (struct svcxprt_rdma*) ; 
 struct page* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct svc_rdma_op_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_rdma_op_ctxt*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct svcxprt_rdma *xprt)
{
	struct ib_recv_wr recv_wr, *bad_recv_wr;
	struct svc_rdma_op_ctxt *ctxt;
	struct page *page;
	dma_addr_t pa;
	int sge_no;
	int buflen;
	int ret;

	ctxt = FUNC5(xprt);
	buflen = 0;
	ctxt->direction = DMA_FROM_DEVICE;
	for (sge_no = 0; buflen < xprt->sc_max_req_size; sge_no++) {
		FUNC0(sge_no >= xprt->sc_max_sge);
		page = FUNC6();
		ctxt->pages[sge_no] = page;
		pa = FUNC2(xprt->sc_cm_id->device,
				     page, 0, PAGE_SIZE,
				     DMA_FROM_DEVICE);
		if (FUNC3(xprt->sc_cm_id->device, pa))
			goto err_put_ctxt;
		FUNC1(&xprt->sc_dma_used);
		ctxt->sge[sge_no].addr = pa;
		ctxt->sge[sge_no].length = PAGE_SIZE;
		ctxt->sge[sge_no].lkey = xprt->sc_dma_lkey;
		ctxt->count = sge_no + 1;
		buflen += PAGE_SIZE;
	}
	recv_wr.next = NULL;
	recv_wr.sg_list = &ctxt->sge[0];
	recv_wr.num_sge = ctxt->count;
	recv_wr.wr_id = (u64)(unsigned long)ctxt;

	FUNC9(&xprt->sc_xprt);
	ret = FUNC4(xprt->sc_qp, &recv_wr, &bad_recv_wr);
	if (ret) {
		FUNC8(ctxt);
		FUNC7(ctxt, 1);
		FUNC10(&xprt->sc_xprt);
	}
	return ret;

 err_put_ctxt:
	FUNC8(ctxt);
	FUNC7(ctxt, 1);
	return -ENOMEM;
}