#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rds_ib_connection {struct rds_connection* i_cm_id; } ;
struct rds_ib_connect_private {scalar_t__ dp_ack_seq; int /*<<< orphan*/  dp_credit; int /*<<< orphan*/  dp_saddr; int /*<<< orphan*/  dp_daddr; } ;
struct TYPE_14__ {TYPE_5__* path_rec; } ;
struct rds_connection {int /*<<< orphan*/  c_cm_lock; struct rds_connection* context; struct rds_ib_connection* c_transport_data; TYPE_6__ route; } ;
struct rdma_conn_param {int dummy; } ;
struct rdma_cm_id {int /*<<< orphan*/  c_cm_lock; struct rdma_cm_id* context; struct rds_ib_connection* c_transport_data; TYPE_6__ route; } ;
struct TYPE_15__ {int /*<<< orphan*/  initiator_depth; int /*<<< orphan*/  responder_resources; struct rds_ib_connect_private* private_data; } ;
struct TYPE_16__ {TYPE_7__ conn; } ;
struct rdma_cm_event {TYPE_8__ param; } ;
typedef  scalar_t__ __be64 ;
struct TYPE_11__ {scalar_t__ interface_id; } ;
struct TYPE_12__ {TYPE_3__ global; } ;
struct TYPE_9__ {scalar_t__ interface_id; } ;
struct TYPE_10__ {TYPE_1__ global; } ;
struct TYPE_13__ {TYPE_4__ dgid; TYPE_2__ sgid; } ;

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
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct rds_connection*,struct rdma_conn_param*) ; 
 int /*<<< orphan*/  FUNC10 (struct rds_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rds_connection* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rds_connection*) ; 
 scalar_t__ FUNC13 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC14 (struct rds_connection*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct rds_connection*,struct rdma_conn_param*,struct rds_ib_connect_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct rds_connection*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct rdma_cm_event*) ; 
 int /*<<< orphan*/  FUNC18 (struct rds_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct rds_connection*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_ib_transport ; 
 int /*<<< orphan*/  FUNC22 (struct rds_connection*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 int /*<<< orphan*/  s_ib_connect_raced ; 
 int /*<<< orphan*/  s_ib_listen_closed_stale ; 

int FUNC24(struct rdma_cm_id *cm_id,
				    struct rdma_cm_event *event)
{
	__be64 lguid = cm_id->route.path_rec->sgid.global.interface_id;
	__be64 fguid = cm_id->route.path_rec->dgid.global.interface_id;
	const struct rds_ib_connect_private *dp = event->param.conn.private_data;
	struct rds_ib_connect_private dp_rep;
	struct rds_connection *conn = NULL;
	struct rds_ib_connection *ic = NULL;
	struct rdma_conn_param conn_param;
	u32 version;
	int err = 1, destroy = 1;

	/* Check whether the remote protocol version matches ours. */
	version = FUNC17(event);
	if (!version)
		goto out;

	FUNC23("saddr %pI4 daddr %pI4 RDSv%u.%u lguid 0x%llx fguid "
		 "0x%llx\n", &dp->dp_saddr, &dp->dp_daddr,
		 FUNC3(version), FUNC4(version),
		 (unsigned long long)FUNC6(lguid),
		 (unsigned long long)FUNC6(fguid));

	conn = FUNC11(dp->dp_daddr, dp->dp_saddr, &rds_ib_transport,
			       GFP_KERNEL);
	if (FUNC1(conn)) {
		FUNC23("rds_conn_create failed (%ld)\n", FUNC2(conn));
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
	FUNC7(&conn->c_cm_lock);
	if (!FUNC14(conn, RDS_CONN_DOWN, RDS_CONN_CONNECTING)) {
		if (FUNC13(conn) == RDS_CONN_UP) {
			FUNC23("incoming connect while connecting\n");
			FUNC12(conn);
			FUNC21(s_ib_listen_closed_stale);
		} else
		if (FUNC13(conn) == RDS_CONN_CONNECTING) {
			/* Wait and see - our connect may still be succeeding */
			FUNC21(s_ib_connect_raced);
		}
		goto out;
	}

	ic = conn->c_transport_data;

	FUNC19(conn, version);
	FUNC18(conn, FUNC5(dp->dp_credit));

	/* If the peer gave us the last packet it saw, process this as if
	 * we had received a regular ACK. */
	if (dp->dp_ack_seq)
		FUNC22(conn, FUNC6(dp->dp_ack_seq), NULL);

	FUNC0(cm_id->context);
	FUNC0(ic->i_cm_id);

	ic->i_cm_id = cm_id;
	cm_id->context = conn;

	/* We got halfway through setting up the ib_connection, if we
	 * fail now, we have to take the long route out of this mess. */
	destroy = 0;

	err = FUNC20(conn);
	if (err) {
		FUNC16(conn, "rds_ib_setup_qp failed (%d)\n", err);
		goto out;
	}

	FUNC15(conn, &conn_param, &dp_rep, version,
		event->param.conn.responder_resources,
		event->param.conn.initiator_depth);

	/* rdma_accept() calls rdma_reject() internally if it fails */
	err = FUNC9(cm_id, &conn_param);
	if (err)
		FUNC16(conn, "rdma_accept failed (%d)\n", err);

out:
	if (conn)
		FUNC8(&conn->c_cm_lock);
	if (err)
		FUNC10(cm_id, NULL, 0);
	return destroy;
}