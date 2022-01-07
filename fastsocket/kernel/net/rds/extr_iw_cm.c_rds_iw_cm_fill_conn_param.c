
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rds_iw_connection {int i_credits; scalar_t__ i_flowctl; } ;
struct rds_iw_connect_private {int responder_resources; int initiator_depth; int private_data_len; struct rds_iw_connect_private* private_data; int dp_credit; int dp_ack_seq; int dp_protocol_minor_mask; int dp_protocol_minor; int dp_protocol_major; int dp_daddr; int dp_saddr; } ;
struct rds_connection {int c_faddr; int c_laddr; struct rds_iw_connection* c_transport_data; } ;
struct rdma_conn_param {int responder_resources; int initiator_depth; int private_data_len; struct rdma_conn_param* private_data; int dp_credit; int dp_ack_seq; int dp_protocol_minor_mask; int dp_protocol_minor; int dp_protocol_major; int dp_daddr; int dp_saddr; } ;


 unsigned int IB_GET_POST_CREDITS (int ) ;
 int IB_SET_POST_CREDITS (unsigned int) ;
 int RDS_IW_SUPPORTED_PROTOCOLS ;
 int RDS_PROTOCOL_MAJOR (int ) ;
 int RDS_PROTOCOL_MINOR (int ) ;
 int atomic_read (int *) ;
 int atomic_sub (int ,int *) ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (unsigned int) ;
 int memset (struct rds_iw_connect_private*,int ,int) ;
 int rds_iw_piggyb_ack (struct rds_iw_connection*) ;

__attribute__((used)) static void rds_iw_cm_fill_conn_param(struct rds_connection *conn,
   struct rdma_conn_param *conn_param,
   struct rds_iw_connect_private *dp,
   u32 protocol_version)
{
 struct rds_iw_connection *ic = conn->c_transport_data;

 memset(conn_param, 0, sizeof(struct rdma_conn_param));

 conn_param->responder_resources = 1;
 conn_param->initiator_depth = 1;

 if (dp) {
  memset(dp, 0, sizeof(*dp));
  dp->dp_saddr = conn->c_laddr;
  dp->dp_daddr = conn->c_faddr;
  dp->dp_protocol_major = RDS_PROTOCOL_MAJOR(protocol_version);
  dp->dp_protocol_minor = RDS_PROTOCOL_MINOR(protocol_version);
  dp->dp_protocol_minor_mask = cpu_to_be16(RDS_IW_SUPPORTED_PROTOCOLS);
  dp->dp_ack_seq = rds_iw_piggyb_ack(ic);


  if (ic->i_flowctl) {
   unsigned int credits;

   credits = IB_GET_POST_CREDITS(atomic_read(&ic->i_credits));
   dp->dp_credit = cpu_to_be32(credits);
   atomic_sub(IB_SET_POST_CREDITS(credits), &ic->i_credits);
  }

  conn_param->private_data = dp;
  conn_param->private_data_len = sizeof(*dp);
 }
}
