#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rds_iw_connection {struct rdma_cm_id* i_cm_id; int /*<<< orphan*/  i_flowctl; } ;
struct rds_iw_connect_private {int dummy; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;
struct rdma_conn_param {int dummy; } ;
struct rdma_cm_id {struct rds_connection* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_PROTOCOL_3_0 ; 
 int /*<<< orphan*/  RDS_PROTOCOL_VERSION ; 
 int FUNC0 (struct rdma_cm_id*,struct rdma_conn_param*) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_connection*,struct rdma_conn_param*,struct rds_iw_connect_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_connection*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_connection*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rds_connection*) ; 
 int /*<<< orphan*/  rds_iw_sysctl_flow_control ; 

int FUNC5(struct rdma_cm_id *cm_id)
{
	struct rds_connection *conn = cm_id->context;
	struct rds_iw_connection *ic = conn->c_transport_data;
	struct rdma_conn_param conn_param;
	struct rds_iw_connect_private dp;
	int ret;

	/* If the peer doesn't do protocol negotiation, we must
	 * default to RDSv3.0 */
	FUNC3(conn, RDS_PROTOCOL_3_0);
	ic->i_flowctl = rds_iw_sysctl_flow_control;	/* advertise flow control */

	ret = FUNC4(conn);
	if (ret) {
		FUNC2(conn, "rds_iw_setup_qp failed (%d)\n", ret);
		goto out;
	}

	FUNC1(conn, &conn_param, &dp, RDS_PROTOCOL_VERSION);

	ret = FUNC0(cm_id, &conn_param);
	if (ret)
		FUNC2(conn, "rdma_connect failed (%d)\n", ret);

out:
	/* Beware - returning non-zero tells the rdma_cm to destroy
	 * the cm_id. We should certainly not do it as long as we still
	 * "own" the cm_id. */
	if (ret) {
		struct rds_iw_connection *ic = conn->c_transport_data;

		if (ic->i_cm_id == cm_id)
			ret = 0;
	}
	return ret;
}