
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_connection {struct rdma_cm_id* i_cm_id; int i_flowctl; } ;
struct rds_ib_connect_private {int dummy; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;
struct rdma_conn_param {int dummy; } ;
struct rdma_cm_id {struct rds_connection* context; } ;


 int RDS_PROTOCOL_3_0 ;
 int RDS_PROTOCOL_VERSION ;
 int UINT_MAX ;
 int rdma_connect (struct rdma_cm_id*,struct rdma_conn_param*) ;
 int rds_ib_cm_fill_conn_param (struct rds_connection*,struct rdma_conn_param*,struct rds_ib_connect_private*,int ,int ,int ) ;
 int rds_ib_conn_error (struct rds_connection*,char*,int) ;
 int rds_ib_set_protocol (struct rds_connection*,int ) ;
 int rds_ib_setup_qp (struct rds_connection*) ;
 int rds_ib_sysctl_flow_control ;

int rds_ib_cm_initiate_connect(struct rdma_cm_id *cm_id)
{
 struct rds_connection *conn = cm_id->context;
 struct rds_ib_connection *ic = conn->c_transport_data;
 struct rdma_conn_param conn_param;
 struct rds_ib_connect_private dp;
 int ret;



 rds_ib_set_protocol(conn, RDS_PROTOCOL_3_0);
 ic->i_flowctl = rds_ib_sysctl_flow_control;

 ret = rds_ib_setup_qp(conn);
 if (ret) {
  rds_ib_conn_error(conn, "rds_ib_setup_qp failed (%d)\n", ret);
  goto out;
 }

 rds_ib_cm_fill_conn_param(conn, &conn_param, &dp, RDS_PROTOCOL_VERSION,
  UINT_MAX, UINT_MAX);
 ret = rdma_connect(cm_id, &conn_param);
 if (ret)
  rds_ib_conn_error(conn, "rdma_connect failed (%d)\n", ret);

out:



 if (ret) {
  if (ic->i_cm_id == cm_id)
   ret = 0;
 }
 return ret;
}
