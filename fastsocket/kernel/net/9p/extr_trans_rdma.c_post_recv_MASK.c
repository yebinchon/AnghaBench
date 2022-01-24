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
struct p9_trans_rdma {int /*<<< orphan*/  qp; int /*<<< orphan*/  lkey; TYPE_2__* cm_id; } ;
struct p9_rdma_context {int /*<<< orphan*/  wc_op; int /*<<< orphan*/  busa; TYPE_1__* rc; } ;
struct p9_client {int /*<<< orphan*/  msize; struct p9_trans_rdma* trans; } ;
struct ib_sge {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct ib_recv_wr {unsigned long wr_id; int num_sge; struct ib_sge* sg_list; int /*<<< orphan*/ * next; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {int /*<<< orphan*/  sdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EIO ; 
 int /*<<< orphan*/  IB_WC_RECV ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ib_recv_wr*,struct ib_recv_wr**) ; 

__attribute__((used)) static int
FUNC4(struct p9_client *client, struct p9_rdma_context *c)
{
	struct p9_trans_rdma *rdma = client->trans;
	struct ib_recv_wr wr, *bad_wr;
	struct ib_sge sge;

	c->busa = FUNC1(rdma->cm_id->device,
				    c->rc->sdata, client->msize,
				    DMA_FROM_DEVICE);
	if (FUNC2(rdma->cm_id->device, c->busa))
		goto error;

	sge.addr = c->busa;
	sge.length = client->msize;
	sge.lkey = rdma->lkey;

	wr.next = NULL;
	c->wc_op = IB_WC_RECV;
	wr.wr_id = (unsigned long) c;
	wr.sg_list = &sge;
	wr.num_sge = 1;
	return FUNC3(rdma->qp, &wr, &bad_wr);

 error:
	FUNC0(P9_DEBUG_ERROR, "EIO\n");
	return -EIO;
}