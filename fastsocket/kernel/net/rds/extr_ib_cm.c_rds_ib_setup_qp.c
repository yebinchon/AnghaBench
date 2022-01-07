
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rds_ib_send_work {int dummy; } ;
struct rds_ib_recv_work {int dummy; } ;
struct rds_ib_device {int max_wrs; int max_sge; int mr; int pd; } ;
struct TYPE_5__ {int w_nr; } ;
struct rds_ib_connection {int * i_recv_cq; int * i_send_cq; int i_mr; int i_pd; void* i_recvs; TYPE_2__ i_recv_ring; void* i_sends; TYPE_2__ i_send_ring; void* i_ack; int i_ack_dma; void* i_recv_hdrs; int i_recv_hdrs_dma; void* i_send_hdrs; int i_send_hdrs_dma; TYPE_3__* i_cm_id; } ;
struct rds_header {int dummy; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;
struct TYPE_4__ {int max_send_wr; int max_recv_wr; int max_recv_sge; int max_send_sge; } ;
struct ib_qp_init_attr {int * recv_cq; int * send_cq; int qp_type; int sq_sig_type; TYPE_1__ cap; struct rds_connection* qp_context; int event_handler; } ;
struct ib_device {int dummy; } ;
typedef int attr ;
struct TYPE_6__ {struct ib_device* device; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IB_CQ_NEXT_COMP ;
 int IB_CQ_SOLICITED ;
 int IB_QPT_RC ;
 int IB_SIGNAL_REQ_WR ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int RDS_IB_RECV_SGE ;
 void* ib_create_cq (struct ib_device*,int ,int ,struct rds_connection*,int,int ) ;
 void* ib_dma_alloc_coherent (struct ib_device*,int,int *,int ) ;
 int ib_req_notify_cq (int *,int ) ;
 int ibdev_to_node (struct ib_device*) ;
 int memset (struct ib_qp_init_attr*,int ,int) ;
 int rdma_create_qp (TYPE_3__*,int ,struct ib_qp_init_attr*) ;
 int rds_ib_add_conn (struct rds_ib_device*,struct rds_connection*) ;
 int rds_ib_cq_event_handler ;
 int rds_ib_dev_put (struct rds_ib_device*) ;
 struct rds_ib_device* rds_ib_get_client_data (struct ib_device*) ;
 int rds_ib_qp_event_handler ;
 int rds_ib_recv_cq_comp_handler ;
 int rds_ib_recv_init_ack (struct rds_ib_connection*) ;
 int rds_ib_ring_resize (TYPE_2__*,int) ;
 int rds_ib_send_cq_comp_handler ;
 int rdsdebug (char*,...) ;
 void* vzalloc_node (int,int ) ;

__attribute__((used)) static int rds_ib_setup_qp(struct rds_connection *conn)
{
 struct rds_ib_connection *ic = conn->c_transport_data;
 struct ib_device *dev = ic->i_cm_id->device;
 struct ib_qp_init_attr attr;
 struct rds_ib_device *rds_ibdev;
 int ret;





 rds_ibdev = rds_ib_get_client_data(dev);
 if (!rds_ibdev)
  return -EOPNOTSUPP;


 rds_ib_add_conn(rds_ibdev, conn);

 if (rds_ibdev->max_wrs < ic->i_send_ring.w_nr + 1)
  rds_ib_ring_resize(&ic->i_send_ring, rds_ibdev->max_wrs - 1);
 if (rds_ibdev->max_wrs < ic->i_recv_ring.w_nr + 1)
  rds_ib_ring_resize(&ic->i_recv_ring, rds_ibdev->max_wrs - 1);


 ic->i_pd = rds_ibdev->pd;
 ic->i_mr = rds_ibdev->mr;

 ic->i_send_cq = ib_create_cq(dev, rds_ib_send_cq_comp_handler,
         rds_ib_cq_event_handler, conn,
         ic->i_send_ring.w_nr + 1, 0);
 if (IS_ERR(ic->i_send_cq)) {
  ret = PTR_ERR(ic->i_send_cq);
  ic->i_send_cq = ((void*)0);
  rdsdebug("ib_create_cq send failed: %d\n", ret);
  goto out;
 }

 ic->i_recv_cq = ib_create_cq(dev, rds_ib_recv_cq_comp_handler,
         rds_ib_cq_event_handler, conn,
         ic->i_recv_ring.w_nr, 0);
 if (IS_ERR(ic->i_recv_cq)) {
  ret = PTR_ERR(ic->i_recv_cq);
  ic->i_recv_cq = ((void*)0);
  rdsdebug("ib_create_cq recv failed: %d\n", ret);
  goto out;
 }

 ret = ib_req_notify_cq(ic->i_send_cq, IB_CQ_NEXT_COMP);
 if (ret) {
  rdsdebug("ib_req_notify_cq send failed: %d\n", ret);
  goto out;
 }

 ret = ib_req_notify_cq(ic->i_recv_cq, IB_CQ_SOLICITED);
 if (ret) {
  rdsdebug("ib_req_notify_cq recv failed: %d\n", ret);
  goto out;
 }


 memset(&attr, 0, sizeof(attr));
 attr.event_handler = rds_ib_qp_event_handler;
 attr.qp_context = conn;

 attr.cap.max_send_wr = ic->i_send_ring.w_nr + 1;
 attr.cap.max_recv_wr = ic->i_recv_ring.w_nr + 1;
 attr.cap.max_send_sge = rds_ibdev->max_sge;
 attr.cap.max_recv_sge = RDS_IB_RECV_SGE;
 attr.sq_sig_type = IB_SIGNAL_REQ_WR;
 attr.qp_type = IB_QPT_RC;
 attr.send_cq = ic->i_send_cq;
 attr.recv_cq = ic->i_recv_cq;





 ret = rdma_create_qp(ic->i_cm_id, ic->i_pd, &attr);
 if (ret) {
  rdsdebug("rdma_create_qp failed: %d\n", ret);
  goto out;
 }

 ic->i_send_hdrs = ib_dma_alloc_coherent(dev,
        ic->i_send_ring.w_nr *
      sizeof(struct rds_header),
        &ic->i_send_hdrs_dma, GFP_KERNEL);
 if (!ic->i_send_hdrs) {
  ret = -ENOMEM;
  rdsdebug("ib_dma_alloc_coherent send failed\n");
  goto out;
 }

 ic->i_recv_hdrs = ib_dma_alloc_coherent(dev,
        ic->i_recv_ring.w_nr *
      sizeof(struct rds_header),
        &ic->i_recv_hdrs_dma, GFP_KERNEL);
 if (!ic->i_recv_hdrs) {
  ret = -ENOMEM;
  rdsdebug("ib_dma_alloc_coherent recv failed\n");
  goto out;
 }

 ic->i_ack = ib_dma_alloc_coherent(dev, sizeof(struct rds_header),
           &ic->i_ack_dma, GFP_KERNEL);
 if (!ic->i_ack) {
  ret = -ENOMEM;
  rdsdebug("ib_dma_alloc_coherent ack failed\n");
  goto out;
 }

 ic->i_sends = vzalloc_node(ic->i_send_ring.w_nr * sizeof(struct rds_ib_send_work),
       ibdev_to_node(dev));
 if (!ic->i_sends) {
  ret = -ENOMEM;
  rdsdebug("send allocation failed\n");
  goto out;
 }

 ic->i_recvs = vzalloc_node(ic->i_recv_ring.w_nr * sizeof(struct rds_ib_recv_work),
       ibdev_to_node(dev));
 if (!ic->i_recvs) {
  ret = -ENOMEM;
  rdsdebug("recv allocation failed\n");
  goto out;
 }

 rds_ib_recv_init_ack(ic);

 rdsdebug("conn %p pd %p mr %p cq %p %p\n", conn, ic->i_pd, ic->i_mr,
   ic->i_send_cq, ic->i_recv_cq);

out:
 rds_ib_dev_put(rds_ibdev);
 return ret;
}
