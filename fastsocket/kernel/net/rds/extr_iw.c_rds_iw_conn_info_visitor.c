
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct rds_iw_device {int max_sge; } ;
struct TYPE_10__ {int w_nr; } ;
struct TYPE_9__ {int w_nr; } ;
struct rds_iw_connection {TYPE_5__ i_recv_ring; TYPE_4__ i_send_ring; TYPE_3__* i_cm_id; } ;
struct rds_info_rdma_connection {int max_send_sge; int max_recv_wr; int max_send_wr; int dst_gid; int src_gid; int dst_addr; int src_addr; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; int c_faddr; int c_laddr; int * c_trans; } ;
struct rdma_dev_addr {int dummy; } ;
struct TYPE_6__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;
struct TYPE_8__ {int device; TYPE_2__ route; } ;


 scalar_t__ RDS_CONN_UP ;
 struct rds_iw_device* ib_get_client_data (int ,int *) ;
 int memset (int *,int ,int) ;
 int rdma_addr_get_dgid (struct rdma_dev_addr*,union ib_gid*) ;
 int rdma_addr_get_sgid (struct rdma_dev_addr*,union ib_gid*) ;
 scalar_t__ rds_conn_state (struct rds_connection*) ;
 int rds_iw_client ;
 int rds_iw_get_mr_info (struct rds_iw_device*,struct rds_info_rdma_connection*) ;
 int rds_iw_transport ;

__attribute__((used)) static int rds_iw_conn_info_visitor(struct rds_connection *conn,
        void *buffer)
{
 struct rds_info_rdma_connection *iinfo = buffer;
 struct rds_iw_connection *ic;


 if (conn->c_trans != &rds_iw_transport)
  return 0;

 iinfo->src_addr = conn->c_laddr;
 iinfo->dst_addr = conn->c_faddr;

 memset(&iinfo->src_gid, 0, sizeof(iinfo->src_gid));
 memset(&iinfo->dst_gid, 0, sizeof(iinfo->dst_gid));
 if (rds_conn_state(conn) == RDS_CONN_UP) {
  struct rds_iw_device *rds_iwdev;
  struct rdma_dev_addr *dev_addr;

  ic = conn->c_transport_data;
  dev_addr = &ic->i_cm_id->route.addr.dev_addr;

  rdma_addr_get_sgid(dev_addr, (union ib_gid *) &iinfo->src_gid);
  rdma_addr_get_dgid(dev_addr, (union ib_gid *) &iinfo->dst_gid);

  rds_iwdev = ib_get_client_data(ic->i_cm_id->device, &rds_iw_client);
  iinfo->max_send_wr = ic->i_send_ring.w_nr;
  iinfo->max_recv_wr = ic->i_recv_ring.w_nr;
  iinfo->max_send_sge = rds_iwdev->max_sge;
  rds_iw_get_mr_info(rds_iwdev, iinfo);
 }
 return 1;
}
