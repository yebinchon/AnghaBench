#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_11__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_22__ {int /*<<< orphan*/  max_recv_sge; int /*<<< orphan*/  max_send_sge; scalar_t__ max_recv_wr; scalar_t__ max_send_wr; } ;
struct rdma_conn_param {int /*<<< orphan*/  initiator_depth; int /*<<< orphan*/  responder_resources; scalar_t__ private_data_len; int /*<<< orphan*/ * private_data; TYPE_4__* recv_cq; TYPE_4__* send_cq; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  sq_sig_type; TYPE_3__ cap; struct p9_client* qp_context; int /*<<< orphan*/  event_handler; } ;
struct TYPE_20__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_21__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct p9_trans_rdma {scalar_t__ state; int /*<<< orphan*/  cm_done; TYPE_4__* cm_id; int /*<<< orphan*/  qp; TYPE_4__* pd; TYPE_4__* cq; TYPE_4__* dma_mr; int /*<<< orphan*/  lkey; int /*<<< orphan*/  timeout; TYPE_2__ addr; } ;
struct p9_rdma_opts {scalar_t__ rq_depth; scalar_t__ sq_depth; int /*<<< orphan*/  port; } ;
struct p9_client {int /*<<< orphan*/  status; struct p9_trans_rdma* trans; } ;
struct ib_qp_init_attr {int /*<<< orphan*/  initiator_depth; int /*<<< orphan*/  responder_resources; scalar_t__ private_data_len; int /*<<< orphan*/ * private_data; TYPE_4__* recv_cq; TYPE_4__* send_cq; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  sq_sig_type; TYPE_3__ cap; struct p9_client* qp_context; int /*<<< orphan*/  event_handler; } ;
struct ib_device_attr {int device_cap_flags; } ;
typedef  int /*<<< orphan*/  conn_param ;
struct TYPE_23__ {int /*<<< orphan*/  qp; int /*<<< orphan*/  lkey; TYPE_11__* device; } ;
struct TYPE_19__ {int /*<<< orphan*/  local_dma_lkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  Connected ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  IB_ACCESS_LOCAL_WRITE ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int IB_DEVICE_LOCAL_DMA_LKEY ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 int /*<<< orphan*/  IB_SIGNAL_REQ_WR ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 scalar_t__ P9_RDMA_ADDR_RESOLVED ; 
 scalar_t__ P9_RDMA_CONNECTED ; 
 int /*<<< orphan*/  P9_RDMA_IRD ; 
 int /*<<< orphan*/  P9_RDMA_ORD ; 
 int /*<<< orphan*/  P9_RDMA_RECV_SGE ; 
 scalar_t__ P9_RDMA_ROUTE_RESOLVED ; 
 int /*<<< orphan*/  P9_RDMA_SEND_SGE ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 struct p9_trans_rdma* FUNC1 (struct p9_rdma_opts*) ; 
 int /*<<< orphan*/  cq_comp_handler ; 
 int /*<<< orphan*/  cq_event_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_11__*) ; 
 TYPE_4__* FUNC4 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct p9_client*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_11__*,struct ib_device_attr*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_conn_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  p9_cm_event_handler ; 
 int FUNC10 (char*,struct p9_rdma_opts*) ; 
 int /*<<< orphan*/  qp_event_handler ; 
 int FUNC11 (TYPE_4__*,struct rdma_conn_param*) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ ,struct p9_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_4__*,TYPE_4__*,struct rdma_conn_param*) ; 
 int /*<<< orphan*/  FUNC14 (struct p9_trans_rdma*) ; 
 int FUNC15 (TYPE_4__*,int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(struct p9_client *client, const char *addr, char *args)
{
	int err;
	struct p9_rdma_opts opts;
	struct p9_trans_rdma *rdma;
	struct rdma_conn_param conn_param;
	struct ib_qp_init_attr qp_attr;
	struct ib_device_attr devattr;

	/* Parse the transport specific mount options */
	err = FUNC10(args, &opts);
	if (err < 0)
		return err;

	/* Create and initialize the RDMA transport structure */
	rdma = FUNC1(&opts);
	if (!rdma)
		return -ENOMEM;

	/* Create the RDMA CM ID */
	rdma->cm_id = FUNC12(p9_cm_event_handler, client, RDMA_PS_TCP,
				     IB_QPT_RC);
	if (FUNC0(rdma->cm_id))
		goto error;

	/* Associate the client with the transport */
	client->trans = rdma;

	/* Resolve the server's address */
	rdma->addr.sin_family = AF_INET;
	rdma->addr.sin_addr.s_addr = FUNC8(addr);
	rdma->addr.sin_port = FUNC2(opts.port);
	err = FUNC15(rdma->cm_id, NULL,
				(struct sockaddr *)&rdma->addr,
				rdma->timeout);
	if (err)
		goto error;
	err = FUNC17(&rdma->cm_done);
	if (err || (rdma->state != P9_RDMA_ADDR_RESOLVED))
		goto error;

	/* Resolve the route to the server */
	err = FUNC16(rdma->cm_id, rdma->timeout);
	if (err)
		goto error;
	err = FUNC17(&rdma->cm_done);
	if (err || (rdma->state != P9_RDMA_ROUTE_RESOLVED))
		goto error;

	/* Query the device attributes */
	err = FUNC6(rdma->cm_id->device, &devattr);
	if (err)
		goto error;

	/* Create the Completion Queue */
	rdma->cq = FUNC4(rdma->cm_id->device, cq_comp_handler,
				cq_event_handler, client,
				opts.sq_depth + opts.rq_depth + 1, 0);
	if (FUNC0(rdma->cq))
		goto error;
	FUNC7(rdma->cq, IB_CQ_NEXT_COMP);

	/* Create the Protection Domain */
	rdma->pd = FUNC3(rdma->cm_id->device);
	if (FUNC0(rdma->pd))
		goto error;

	/* Cache the DMA lkey in the transport */
	rdma->dma_mr = NULL;
	if (devattr.device_cap_flags & IB_DEVICE_LOCAL_DMA_LKEY)
		rdma->lkey = rdma->cm_id->device->local_dma_lkey;
	else {
		rdma->dma_mr = FUNC5(rdma->pd, IB_ACCESS_LOCAL_WRITE);
		if (FUNC0(rdma->dma_mr))
			goto error;
		rdma->lkey = rdma->dma_mr->lkey;
	}

	/* Create the Queue Pair */
	FUNC9(&qp_attr, 0, sizeof qp_attr);
	qp_attr.event_handler = qp_event_handler;
	qp_attr.qp_context = client;
	qp_attr.cap.max_send_wr = opts.sq_depth;
	qp_attr.cap.max_recv_wr = opts.rq_depth;
	qp_attr.cap.max_send_sge = P9_RDMA_SEND_SGE;
	qp_attr.cap.max_recv_sge = P9_RDMA_RECV_SGE;
	qp_attr.sq_sig_type = IB_SIGNAL_REQ_WR;
	qp_attr.qp_type = IB_QPT_RC;
	qp_attr.send_cq = rdma->cq;
	qp_attr.recv_cq = rdma->cq;
	err = FUNC13(rdma->cm_id, rdma->pd, &qp_attr);
	if (err)
		goto error;
	rdma->qp = rdma->cm_id->qp;

	/* Request a connection */
	FUNC9(&conn_param, 0, sizeof(conn_param));
	conn_param.private_data = NULL;
	conn_param.private_data_len = 0;
	conn_param.responder_resources = P9_RDMA_IRD;
	conn_param.initiator_depth = P9_RDMA_ORD;
	err = FUNC11(rdma->cm_id, &conn_param);
	if (err)
		goto error;
	err = FUNC17(&rdma->cm_done);
	if (err || (rdma->state != P9_RDMA_CONNECTED))
		goto error;

	client->status = Connected;

	return 0;

error:
	FUNC14(rdma);
	return -ENOTCONN;
}