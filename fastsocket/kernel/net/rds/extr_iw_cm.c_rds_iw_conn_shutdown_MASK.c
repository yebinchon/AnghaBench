#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int w_nr; } ;
struct rds_iw_connection {int /*<<< orphan*/ * i_recvs; int /*<<< orphan*/ * i_sends; TYPE_1__* i_iwinc; TYPE_2__ i_recv_ring; TYPE_2__ i_send_ring; int /*<<< orphan*/  i_credits; scalar_t__ i_flowctl; scalar_t__ i_ack_recv; scalar_t__ i_ack_next; int /*<<< orphan*/  i_ack_flags; int /*<<< orphan*/ * i_rm; scalar_t__ rds_iwdev; int /*<<< orphan*/ * i_ack; int /*<<< orphan*/ * i_recv_hdrs; int /*<<< orphan*/ * i_send_hdrs; int /*<<< orphan*/ * i_recv_cq; int /*<<< orphan*/ * i_send_cq; int /*<<< orphan*/ * i_mr; int /*<<< orphan*/ * i_pd; TYPE_4__* i_cm_id; int /*<<< orphan*/  i_ack_dma; int /*<<< orphan*/  i_recv_hdrs_dma; int /*<<< orphan*/  i_send_hdrs_dma; } ;
struct rds_header {int dummy; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/ * qp; struct ib_device* device; } ;
struct TYPE_7__ {int /*<<< orphan*/  ii_inc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IB_ACK_IN_FLIGHT ; 
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int /*<<< orphan*/  IB_QP_STATE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ib_qp_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct rds_iw_connection*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,struct rds_connection*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  rds_iw_ring_empty_wait ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rds_iw_connection*) ; 
 int /*<<< orphan*/  rds_iw_sysctl_max_recv_wr ; 
 int /*<<< orphan*/  rds_iw_sysctl_max_send_wr ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 

void FUNC20(struct rds_connection *conn)
{
	struct rds_iw_connection *ic = conn->c_transport_data;
	int err = 0;
	struct ib_qp_attr qp_attr;

	FUNC17("cm %p pd %p cq %p %p qp %p\n", ic->i_cm_id,
		 ic->i_pd, ic->i_send_cq, ic->i_recv_cq,
		 ic->i_cm_id ? ic->i_cm_id->qp : NULL);

	if (ic->i_cm_id) {
		struct ib_device *dev = ic->i_cm_id->device;

		FUNC17("disconnecting cm %p\n", ic->i_cm_id);
		err = FUNC9(ic->i_cm_id);
		if (err) {
			/* Actually this may happen quite frequently, when
			 * an outgoing connect raced with an incoming connect.
			 */
			FUNC17("rds_iw_conn_shutdown: failed to disconnect,"
				   " cm: %p err %d\n", ic->i_cm_id, err);
		}

		if (ic->i_cm_id->qp) {
			qp_attr.qp_state = IB_QPS_ERR;
			FUNC6(ic->i_cm_id->qp, &qp_attr, IB_QP_STATE);
		}

		FUNC19(rds_iw_ring_empty_wait,
			FUNC13(&ic->i_send_ring) &&
			FUNC13(&ic->i_recv_ring));

		if (ic->i_send_hdrs)
			FUNC5(dev,
					   ic->i_send_ring.w_nr *
						sizeof(struct rds_header),
					   ic->i_send_hdrs,
					   ic->i_send_hdrs_dma);

		if (ic->i_recv_hdrs)
			FUNC5(dev,
					   ic->i_recv_ring.w_nr *
						sizeof(struct rds_header),
					   ic->i_recv_hdrs,
					   ic->i_recv_hdrs_dma);

		if (ic->i_ack)
			FUNC5(dev, sizeof(struct rds_header),
					     ic->i_ack, ic->i_ack_dma);

		if (ic->i_sends)
			FUNC15(ic);
		if (ic->i_recvs)
			FUNC11(ic);

		if (ic->i_cm_id->qp)
			FUNC8(ic->i_cm_id);
		if (ic->i_send_cq)
			FUNC4(ic->i_send_cq);
		if (ic->i_recv_cq)
			FUNC4(ic->i_recv_cq);

		/*
		 * If associated with an rds_iw_device:
		 * 	Move connection back to the nodev list.
		 * 	Remove cm_id from the device cm_id list.
		 */
		if (ic->rds_iwdev)
			FUNC12(ic->rds_iwdev, conn);

		FUNC7(ic->i_cm_id);

		ic->i_cm_id = NULL;
		ic->i_pd = NULL;
		ic->i_mr = NULL;
		ic->i_send_cq = NULL;
		ic->i_recv_cq = NULL;
		ic->i_send_hdrs = NULL;
		ic->i_recv_hdrs = NULL;
		ic->i_ack = NULL;
	}
	FUNC0(ic->rds_iwdev);

	/* Clear pending transmit */
	if (ic->i_rm) {
		FUNC16(ic->i_rm);
		ic->i_rm = NULL;
	}

	/* Clear the ACK state */
	FUNC3(IB_ACK_IN_FLIGHT, &ic->i_ack_flags);
#ifdef KERNEL_HAS_ATOMIC64
	atomic64_set(&ic->i_ack_next, 0);
#else
	ic->i_ack_next = 0;
#endif
	ic->i_ack_recv = 0;

	/* Clear flow control state */
	ic->i_flowctl = 0;
	FUNC2(&ic->i_credits, 0);

	FUNC14(&ic->i_send_ring, rds_iw_sysctl_max_send_wr);
	FUNC14(&ic->i_recv_ring, rds_iw_sysctl_max_recv_wr);

	if (ic->i_iwinc) {
		FUNC10(&ic->i_iwinc->ii_inc);
		ic->i_iwinc = NULL;
	}

	FUNC18(ic->i_sends);
	ic->i_sends = NULL;
	FUNC18(ic->i_recvs);
	ic->i_recvs = NULL;
	FUNC17("shutdown complete\n");
}