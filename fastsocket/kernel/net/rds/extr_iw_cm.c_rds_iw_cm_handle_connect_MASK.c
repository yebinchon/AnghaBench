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
struct rds_iw_device {int /*<<< orphan*/  dma_local_lkey; } ;
struct rds_iw_connection {int /*<<< orphan*/  i_dma_local_lkey; struct rds_connection* i_cm_id; } ;
struct rds_iw_connect_private {scalar_t__ dp_ack_seq; int /*<<< orphan*/  dp_credit; int /*<<< orphan*/  dp_saddr; int /*<<< orphan*/  dp_daddr; } ;
struct rds_connection {int /*<<< orphan*/  c_cm_lock; int /*<<< orphan*/  device; struct rds_connection* context; struct rds_iw_connection* c_transport_data; } ;
struct rdma_conn_param {int dummy; } ;
struct rdma_cm_id {int /*<<< orphan*/  c_cm_lock; int /*<<< orphan*/  device; struct rdma_cm_id* context; struct rds_iw_connection* c_transport_data; } ;
struct TYPE_3__ {struct rds_iw_connect_private* private_data; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct rdma_cm_event {TYPE_2__ param; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rds_connection*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_connection*) ; 
 scalar_t__ RDS_CONN_CONNECTING ; 
 int /*<<< orphan*/  RDS_CONN_DOWN ; 
 scalar_t__ RDS_CONN_UP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 struct rds_iw_device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct rds_connection*,struct rdma_conn_param*) ; 
 int /*<<< orphan*/  FUNC11 (struct rds_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rds_connection* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rds_connection*) ; 
 scalar_t__ FUNC14 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC15 (struct rds_connection*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  rds_iw_client ; 
 int /*<<< orphan*/  FUNC16 (struct rds_connection*,struct rdma_conn_param*,struct rds_iw_connect_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rds_connection*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct rds_iw_connect_private const*) ; 
 int /*<<< orphan*/  FUNC19 (struct rds_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct rds_connection*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_iw_transport ; 
 int /*<<< orphan*/  FUNC23 (struct rds_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int /*<<< orphan*/  s_iw_connect_raced ; 
 int /*<<< orphan*/  s_iw_listen_closed_stale ; 

int FUNC25(struct rdma_cm_id *cm_id,
				    struct rdma_cm_event *event)
{
	const struct rds_iw_connect_private *dp = event->param.conn.private_data;
	struct rds_iw_connect_private dp_rep;
	struct rds_connection *conn = NULL;
	struct rds_iw_connection *ic = NULL;
	struct rdma_conn_param conn_param;
	struct rds_iw_device *rds_iwdev;
	u32 version;
	int err, destroy = 1;

	/* Check whether the remote protocol version matches ours. */
	version = FUNC18(dp);
	if (!version)
		goto out;

	FUNC24("saddr %pI4 daddr %pI4 RDSv%u.%u\n",
		 &dp->dp_saddr, &dp->dp_daddr,
		 FUNC3(version), FUNC4(version));

	conn = FUNC12(dp->dp_daddr, dp->dp_saddr, &rds_iw_transport,
			       GFP_KERNEL);
	if (FUNC1(conn)) {
		FUNC24("rds_conn_create failed (%ld)\n", FUNC2(conn));
		conn = NULL;
		goto out;
	}

	/*
	 * The connection request may occur while the
	 * previous connection exist, e.g. in case of failover.
	 * But as connections may be initiated simultaneously
	 * by both hosts, we have a random backoff mechanism -
	 * see the comment above rds_queue_reconnect()
	 */
	FUNC8(&conn->c_cm_lock);
	if (!FUNC15(conn, RDS_CONN_DOWN, RDS_CONN_CONNECTING)) {
		if (FUNC14(conn) == RDS_CONN_UP) {
			FUNC24("incoming connect while connecting\n");
			FUNC13(conn);
			FUNC22(s_iw_listen_closed_stale);
		} else
		if (FUNC14(conn) == RDS_CONN_CONNECTING) {
			/* Wait and see - our connect may still be succeeding */
			FUNC22(s_iw_connect_raced);
		}
		FUNC9(&conn->c_cm_lock);
		goto out;
	}

	ic = conn->c_transport_data;

	FUNC20(conn, version);
	FUNC19(conn, FUNC5(dp->dp_credit));

	/* If the peer gave us the last packet it saw, process this as if
	 * we had received a regular ACK. */
	if (dp->dp_ack_seq)
		FUNC23(conn, FUNC6(dp->dp_ack_seq), NULL);

	FUNC0(cm_id->context);
	FUNC0(ic->i_cm_id);

	ic->i_cm_id = cm_id;
	cm_id->context = conn;

	rds_iwdev = FUNC7(cm_id->device, &rds_iw_client);
	ic->i_dma_local_lkey = rds_iwdev->dma_local_lkey;

	/* We got halfway through setting up the ib_connection, if we
	 * fail now, we have to take the long route out of this mess. */
	destroy = 0;

	err = FUNC21(conn);
	if (err) {
		FUNC17(conn, "rds_iw_setup_qp failed (%d)\n", err);
		FUNC9(&conn->c_cm_lock);
		goto out;
	}

	FUNC16(conn, &conn_param, &dp_rep, version);

	/* rdma_accept() calls rdma_reject() internally if it fails */
	err = FUNC10(cm_id, &conn_param);
	FUNC9(&conn->c_cm_lock);
	if (err) {
		FUNC17(conn, "rdma_accept failed (%d)\n", err);
		goto out;
	}

	return 0;

out:
	FUNC11(cm_id, NULL, 0);
	return destroy;
}