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
struct p9_trans_rdma {scalar_t__ rq_depth; scalar_t__ state; int /*<<< orphan*/  req_lock; TYPE_2__* cm_id; int /*<<< orphan*/  qp; int /*<<< orphan*/  sq_sem; int /*<<< orphan*/  lkey; int /*<<< orphan*/  rq_count; } ;
struct p9_req_t {TYPE_1__* tc; struct p9_rdma_context* rc; } ;
struct p9_rdma_context {char* sdata; int capacity; int /*<<< orphan*/  wc_op; struct p9_req_t* req; int /*<<< orphan*/  busa; struct p9_rdma_context* rc; } ;
struct p9_fcall {int dummy; } ;
struct p9_client {int msize; struct p9_trans_rdma* trans; } ;
struct ib_sge {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct ib_send_wr {unsigned long wr_id; int num_sge; struct ib_sge* sg_list; int /*<<< orphan*/  send_flags; int /*<<< orphan*/  opcode; int /*<<< orphan*/ * next; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  sdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_SEND_SIGNALED ; 
 int /*<<< orphan*/  IB_WC_SEND ; 
 int /*<<< orphan*/  IB_WR_SEND ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ P9_RDMA_CLOSING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ib_send_wr*,struct ib_send_wr**) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_rdma_context*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct p9_client*,struct p9_rdma_context*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct p9_client *client, struct p9_req_t *req)
{
	struct p9_trans_rdma *rdma = client->trans;
	struct ib_send_wr wr, *bad_wr;
	struct ib_sge sge;
	int err = 0;
	unsigned long flags;
	struct p9_rdma_context *c = NULL;
	struct p9_rdma_context *rpl_context = NULL;

	/* Allocate an fcall for the reply */
	rpl_context = FUNC8(sizeof *rpl_context, GFP_KERNEL);
	if (!rpl_context)
		goto err_close;

	/*
	 * If the request has a buffer, steal it, otherwise
	 * allocate a new one.  Typically, requests should already
	 * have receive buffers allocated and just swap them around
	 */
	if (!req->rc) {
		req->rc = FUNC8(sizeof(struct p9_fcall)+client->msize,
								GFP_KERNEL);
		if (req->rc) {
			req->rc->sdata = (char *) req->rc +
						sizeof(struct p9_fcall);
			req->rc->capacity = client->msize;
		}
	}
	rpl_context->rc = req->rc;
	if (!rpl_context->rc) {
		FUNC7(rpl_context);
		goto err_close;
	}

	/*
	 * Post a receive buffer for this request. We need to ensure
	 * there is a reply buffer available for every outstanding
	 * request. A flushed request can result in no reply for an
	 * outstanding request, so we must keep a count to avoid
	 * overflowing the RQ.
	 */
	if (FUNC2(&rdma->rq_count) <= rdma->rq_depth) {
		err = FUNC9(client, rpl_context);
		if (err) {
			FUNC7(rpl_context->rc);
			FUNC7(rpl_context);
			goto err_close;
		}
	} else
		FUNC1(&rdma->rq_count);

	/* remove posted receive buffer from request structure */
	req->rc = NULL;

	/* Post the request */
	c = FUNC8(sizeof *c, GFP_KERNEL);
	if (!c)
		goto err_close;
	c->req = req;

	c->busa = FUNC4(rdma->cm_id->device,
				    c->req->tc->sdata, c->req->tc->size,
				    DMA_TO_DEVICE);
	if (FUNC5(rdma->cm_id->device, c->busa))
		goto error;

	sge.addr = c->busa;
	sge.length = c->req->tc->size;
	sge.lkey = rdma->lkey;

	wr.next = NULL;
	c->wc_op = IB_WC_SEND;
	wr.wr_id = (unsigned long) c;
	wr.opcode = IB_WR_SEND;
	wr.send_flags = IB_SEND_SIGNALED;
	wr.sg_list = &sge;
	wr.num_sge = 1;

	if (FUNC3(&rdma->sq_sem))
		goto error;

	return FUNC6(rdma->qp, &wr, &bad_wr);

 error:
	FUNC0(P9_DEBUG_ERROR, "EIO\n");
	return -EIO;

 err_close:
	FUNC11(&rdma->req_lock, flags);
	if (rdma->state < P9_RDMA_CLOSING) {
		rdma->state = P9_RDMA_CLOSING;
		FUNC12(&rdma->req_lock, flags);
		FUNC10(rdma->cm_id);
	} else
		FUNC12(&rdma->req_lock, flags);
	return err;
}