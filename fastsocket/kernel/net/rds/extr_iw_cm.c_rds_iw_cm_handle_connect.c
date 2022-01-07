
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rds_iw_device {int dma_local_lkey; } ;
struct rds_iw_connection {int i_dma_local_lkey; struct rds_connection* i_cm_id; } ;
struct rds_iw_connect_private {scalar_t__ dp_ack_seq; int dp_credit; int dp_saddr; int dp_daddr; } ;
struct rds_connection {int c_cm_lock; int device; struct rds_connection* context; struct rds_iw_connection* c_transport_data; } ;
struct rdma_conn_param {int dummy; } ;
struct rdma_cm_id {int c_cm_lock; int device; struct rdma_cm_id* context; struct rds_iw_connection* c_transport_data; } ;
struct TYPE_3__ {struct rds_iw_connect_private* private_data; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct rdma_cm_event {TYPE_2__ param; } ;


 int BUG_ON (struct rds_connection*) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct rds_connection*) ;
 int PTR_ERR (struct rds_connection*) ;
 scalar_t__ RDS_CONN_CONNECTING ;
 int RDS_CONN_DOWN ;
 scalar_t__ RDS_CONN_UP ;
 int RDS_PROTOCOL_MAJOR (int ) ;
 int RDS_PROTOCOL_MINOR (int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (scalar_t__) ;
 struct rds_iw_device* ib_get_client_data (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_accept (struct rds_connection*,struct rdma_conn_param*) ;
 int rdma_reject (struct rds_connection*,int *,int ) ;
 struct rds_connection* rds_conn_create (int ,int ,int *,int ) ;
 int rds_conn_drop (struct rds_connection*) ;
 scalar_t__ rds_conn_state (struct rds_connection*) ;
 int rds_conn_transition (struct rds_connection*,int ,scalar_t__) ;
 int rds_iw_client ;
 int rds_iw_cm_fill_conn_param (struct rds_connection*,struct rdma_conn_param*,struct rds_iw_connect_private*,int ) ;
 int rds_iw_conn_error (struct rds_connection*,char*,int) ;
 int rds_iw_protocol_compatible (struct rds_iw_connect_private const*) ;
 int rds_iw_set_flow_control (struct rds_connection*,int ) ;
 int rds_iw_set_protocol (struct rds_connection*,int ) ;
 int rds_iw_setup_qp (struct rds_connection*) ;
 int rds_iw_stats_inc (int ) ;
 int rds_iw_transport ;
 int rds_send_drop_acked (struct rds_connection*,int ,int *) ;
 int rdsdebug (char*,...) ;
 int s_iw_connect_raced ;
 int s_iw_listen_closed_stale ;

int rds_iw_cm_handle_connect(struct rdma_cm_id *cm_id,
        struct rdma_cm_event *event)
{
 const struct rds_iw_connect_private *dp = event->param.conn.private_data;
 struct rds_iw_connect_private dp_rep;
 struct rds_connection *conn = ((void*)0);
 struct rds_iw_connection *ic = ((void*)0);
 struct rdma_conn_param conn_param;
 struct rds_iw_device *rds_iwdev;
 u32 version;
 int err, destroy = 1;


 version = rds_iw_protocol_compatible(dp);
 if (!version)
  goto out;

 rdsdebug("saddr %pI4 daddr %pI4 RDSv%u.%u\n",
   &dp->dp_saddr, &dp->dp_daddr,
   RDS_PROTOCOL_MAJOR(version), RDS_PROTOCOL_MINOR(version));

 conn = rds_conn_create(dp->dp_daddr, dp->dp_saddr, &rds_iw_transport,
          GFP_KERNEL);
 if (IS_ERR(conn)) {
  rdsdebug("rds_conn_create failed (%ld)\n", PTR_ERR(conn));
  conn = ((void*)0);
  goto out;
 }
 mutex_lock(&conn->c_cm_lock);
 if (!rds_conn_transition(conn, RDS_CONN_DOWN, RDS_CONN_CONNECTING)) {
  if (rds_conn_state(conn) == RDS_CONN_UP) {
   rdsdebug("incoming connect while connecting\n");
   rds_conn_drop(conn);
   rds_iw_stats_inc(s_iw_listen_closed_stale);
  } else
  if (rds_conn_state(conn) == RDS_CONN_CONNECTING) {

   rds_iw_stats_inc(s_iw_connect_raced);
  }
  mutex_unlock(&conn->c_cm_lock);
  goto out;
 }

 ic = conn->c_transport_data;

 rds_iw_set_protocol(conn, version);
 rds_iw_set_flow_control(conn, be32_to_cpu(dp->dp_credit));



 if (dp->dp_ack_seq)
  rds_send_drop_acked(conn, be64_to_cpu(dp->dp_ack_seq), ((void*)0));

 BUG_ON(cm_id->context);
 BUG_ON(ic->i_cm_id);

 ic->i_cm_id = cm_id;
 cm_id->context = conn;

 rds_iwdev = ib_get_client_data(cm_id->device, &rds_iw_client);
 ic->i_dma_local_lkey = rds_iwdev->dma_local_lkey;



 destroy = 0;

 err = rds_iw_setup_qp(conn);
 if (err) {
  rds_iw_conn_error(conn, "rds_iw_setup_qp failed (%d)\n", err);
  mutex_unlock(&conn->c_cm_lock);
  goto out;
 }

 rds_iw_cm_fill_conn_param(conn, &conn_param, &dp_rep, version);


 err = rdma_accept(cm_id, &conn_param);
 mutex_unlock(&conn->c_cm_lock);
 if (err) {
  rds_iw_conn_error(conn, "rdma_accept failed (%d)\n", err);
  goto out;
 }

 return 0;

out:
 rdma_reject(cm_id, ((void*)0), 0);
 return destroy;
}
