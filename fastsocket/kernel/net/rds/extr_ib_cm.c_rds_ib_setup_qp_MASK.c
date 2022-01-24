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
struct rds_ib_send_work {int dummy; } ;
struct rds_ib_recv_work {int dummy; } ;
struct rds_ib_device {int max_wrs; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  mr; int /*<<< orphan*/  pd; } ;
struct TYPE_5__ {int w_nr; } ;
struct rds_ib_connection {int /*<<< orphan*/ * i_recv_cq; int /*<<< orphan*/ * i_send_cq; int /*<<< orphan*/  i_mr; int /*<<< orphan*/  i_pd; void* i_recvs; TYPE_2__ i_recv_ring; void* i_sends; TYPE_2__ i_send_ring; void* i_ack; int /*<<< orphan*/  i_ack_dma; void* i_recv_hdrs; int /*<<< orphan*/  i_recv_hdrs_dma; void* i_send_hdrs; int /*<<< orphan*/  i_send_hdrs_dma; TYPE_3__* i_cm_id; } ;
struct rds_header {int dummy; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;
struct TYPE_4__ {int max_send_wr; int max_recv_wr; int /*<<< orphan*/  max_recv_sge; int /*<<< orphan*/  max_send_sge; } ;
struct ib_qp_init_attr {int /*<<< orphan*/ * recv_cq; int /*<<< orphan*/ * send_cq; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  sq_sig_type; TYPE_1__ cap; struct rds_connection* qp_context; int /*<<< orphan*/  event_handler; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  attr ;
struct TYPE_6__ {struct ib_device* device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  IB_CQ_SOLICITED ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 int /*<<< orphan*/  IB_SIGNAL_REQ_WR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDS_IB_RECV_SGE ; 
 void* FUNC2 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rds_connection*,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct ib_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,struct ib_qp_init_attr*) ; 
 int /*<<< orphan*/  FUNC8 (struct rds_ib_device*,struct rds_connection*) ; 
 int /*<<< orphan*/  rds_ib_cq_event_handler ; 
 int /*<<< orphan*/  FUNC9 (struct rds_ib_device*) ; 
 struct rds_ib_device* FUNC10 (struct ib_device*) ; 
 int /*<<< orphan*/  rds_ib_qp_event_handler ; 
 int /*<<< orphan*/  rds_ib_recv_cq_comp_handler ; 
 int /*<<< orphan*/  FUNC11 (struct rds_ib_connection*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  rds_ib_send_cq_comp_handler ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct rds_connection *conn)
{
	struct rds_ib_connection *ic = conn->c_transport_data;
	struct ib_device *dev = ic->i_cm_id->device;
	struct ib_qp_init_attr attr;
	struct rds_ib_device *rds_ibdev;
	int ret;

	/*
	 * It's normal to see a null device if an incoming connection races
	 * with device removal, so we don't print a warning.
	 */
	rds_ibdev = FUNC10(dev);
	if (!rds_ibdev)
		return -EOPNOTSUPP;

	/* add the conn now so that connection establishment has the dev */
	FUNC8(rds_ibdev, conn);

	if (rds_ibdev->max_wrs < ic->i_send_ring.w_nr + 1)
		FUNC12(&ic->i_send_ring, rds_ibdev->max_wrs - 1);
	if (rds_ibdev->max_wrs < ic->i_recv_ring.w_nr + 1)
		FUNC12(&ic->i_recv_ring, rds_ibdev->max_wrs - 1);

	/* Protection domain and memory range */
	ic->i_pd = rds_ibdev->pd;
	ic->i_mr = rds_ibdev->mr;

	ic->i_send_cq = FUNC2(dev, rds_ib_send_cq_comp_handler,
				     rds_ib_cq_event_handler, conn,
				     ic->i_send_ring.w_nr + 1, 0);
	if (FUNC0(ic->i_send_cq)) {
		ret = FUNC1(ic->i_send_cq);
		ic->i_send_cq = NULL;
		FUNC13("ib_create_cq send failed: %d\n", ret);
		goto out;
	}

	ic->i_recv_cq = FUNC2(dev, rds_ib_recv_cq_comp_handler,
				     rds_ib_cq_event_handler, conn,
				     ic->i_recv_ring.w_nr, 0);
	if (FUNC0(ic->i_recv_cq)) {
		ret = FUNC1(ic->i_recv_cq);
		ic->i_recv_cq = NULL;
		FUNC13("ib_create_cq recv failed: %d\n", ret);
		goto out;
	}

	ret = FUNC4(ic->i_send_cq, IB_CQ_NEXT_COMP);
	if (ret) {
		FUNC13("ib_req_notify_cq send failed: %d\n", ret);
		goto out;
	}

	ret = FUNC4(ic->i_recv_cq, IB_CQ_SOLICITED);
	if (ret) {
		FUNC13("ib_req_notify_cq recv failed: %d\n", ret);
		goto out;
	}

	/* XXX negotiate max send/recv with remote? */
	FUNC6(&attr, 0, sizeof(attr));
	attr.event_handler = rds_ib_qp_event_handler;
	attr.qp_context = conn;
	/* + 1 to allow for the single ack message */
	attr.cap.max_send_wr = ic->i_send_ring.w_nr + 1;
	attr.cap.max_recv_wr = ic->i_recv_ring.w_nr + 1;
	attr.cap.max_send_sge = rds_ibdev->max_sge;
	attr.cap.max_recv_sge = RDS_IB_RECV_SGE;
	attr.sq_sig_type = IB_SIGNAL_REQ_WR;
	attr.qp_type = IB_QPT_RC;
	attr.send_cq = ic->i_send_cq;
	attr.recv_cq = ic->i_recv_cq;

	/*
	 * XXX this can fail if max_*_wr is too large?  Are we supposed
	 * to back off until we get a value that the hardware can support?
	 */
	ret = FUNC7(ic->i_cm_id, ic->i_pd, &attr);
	if (ret) {
		FUNC13("rdma_create_qp failed: %d\n", ret);
		goto out;
	}

	ic->i_send_hdrs = FUNC3(dev,
					   ic->i_send_ring.w_nr *
						sizeof(struct rds_header),
					   &ic->i_send_hdrs_dma, GFP_KERNEL);
	if (!ic->i_send_hdrs) {
		ret = -ENOMEM;
		FUNC13("ib_dma_alloc_coherent send failed\n");
		goto out;
	}

	ic->i_recv_hdrs = FUNC3(dev,
					   ic->i_recv_ring.w_nr *
						sizeof(struct rds_header),
					   &ic->i_recv_hdrs_dma, GFP_KERNEL);
	if (!ic->i_recv_hdrs) {
		ret = -ENOMEM;
		FUNC13("ib_dma_alloc_coherent recv failed\n");
		goto out;
	}

	ic->i_ack = FUNC3(dev, sizeof(struct rds_header),
				       &ic->i_ack_dma, GFP_KERNEL);
	if (!ic->i_ack) {
		ret = -ENOMEM;
		FUNC13("ib_dma_alloc_coherent ack failed\n");
		goto out;
	}

	ic->i_sends = FUNC14(ic->i_send_ring.w_nr * sizeof(struct rds_ib_send_work),
				   FUNC5(dev));
	if (!ic->i_sends) {
		ret = -ENOMEM;
		FUNC13("send allocation failed\n");
		goto out;
	}

	ic->i_recvs = FUNC14(ic->i_recv_ring.w_nr * sizeof(struct rds_ib_recv_work),
				   FUNC5(dev));
	if (!ic->i_recvs) {
		ret = -ENOMEM;
		FUNC13("recv allocation failed\n");
		goto out;
	}

	FUNC11(ic);

	FUNC13("conn %p pd %p mr %p cq %p %p\n", conn, ic->i_pd, ic->i_mr,
		 ic->i_send_cq, ic->i_recv_cq);

out:
	FUNC9(rds_ibdev);
	return ret;
}