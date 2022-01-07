
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int w_nr; } ;
struct rds_iw_connection {int * i_recvs; int * i_sends; TYPE_1__* i_iwinc; TYPE_2__ i_recv_ring; TYPE_2__ i_send_ring; int i_credits; scalar_t__ i_flowctl; scalar_t__ i_ack_recv; scalar_t__ i_ack_next; int i_ack_flags; int * i_rm; scalar_t__ rds_iwdev; int * i_ack; int * i_recv_hdrs; int * i_send_hdrs; int * i_recv_cq; int * i_send_cq; int * i_mr; int * i_pd; TYPE_4__* i_cm_id; int i_ack_dma; int i_recv_hdrs_dma; int i_send_hdrs_dma; } ;
struct rds_header {int dummy; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;
struct ib_qp_attr {int qp_state; } ;
struct ib_device {int dummy; } ;
struct TYPE_9__ {int * qp; struct ib_device* device; } ;
struct TYPE_7__ {int ii_inc; } ;


 int BUG_ON (scalar_t__) ;
 int IB_ACK_IN_FLIGHT ;
 int IB_QPS_ERR ;
 int IB_QP_STATE ;
 int atomic64_set (scalar_t__*,int ) ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int ib_destroy_cq (int *) ;
 int ib_dma_free_coherent (struct ib_device*,int,int *,int ) ;
 int ib_modify_qp (int *,struct ib_qp_attr*,int ) ;
 int rdma_destroy_id (TYPE_4__*) ;
 int rdma_destroy_qp (TYPE_4__*) ;
 int rdma_disconnect (TYPE_4__*) ;
 int rds_inc_put (int *) ;
 int rds_iw_recv_clear_ring (struct rds_iw_connection*) ;
 int rds_iw_remove_conn (scalar_t__,struct rds_connection*) ;
 scalar_t__ rds_iw_ring_empty (TYPE_2__*) ;
 int rds_iw_ring_empty_wait ;
 int rds_iw_ring_init (TYPE_2__*,int ) ;
 int rds_iw_send_clear_ring (struct rds_iw_connection*) ;
 int rds_iw_sysctl_max_recv_wr ;
 int rds_iw_sysctl_max_send_wr ;
 int rds_message_put (int *) ;
 int rdsdebug (char*,...) ;
 int vfree (int *) ;
 int wait_event (int ,int) ;

void rds_iw_conn_shutdown(struct rds_connection *conn)
{
 struct rds_iw_connection *ic = conn->c_transport_data;
 int err = 0;
 struct ib_qp_attr qp_attr;

 rdsdebug("cm %p pd %p cq %p %p qp %p\n", ic->i_cm_id,
   ic->i_pd, ic->i_send_cq, ic->i_recv_cq,
   ic->i_cm_id ? ic->i_cm_id->qp : ((void*)0));

 if (ic->i_cm_id) {
  struct ib_device *dev = ic->i_cm_id->device;

  rdsdebug("disconnecting cm %p\n", ic->i_cm_id);
  err = rdma_disconnect(ic->i_cm_id);
  if (err) {



   rdsdebug("rds_iw_conn_shutdown: failed to disconnect,"
       " cm: %p err %d\n", ic->i_cm_id, err);
  }

  if (ic->i_cm_id->qp) {
   qp_attr.qp_state = IB_QPS_ERR;
   ib_modify_qp(ic->i_cm_id->qp, &qp_attr, IB_QP_STATE);
  }

  wait_event(rds_iw_ring_empty_wait,
   rds_iw_ring_empty(&ic->i_send_ring) &&
   rds_iw_ring_empty(&ic->i_recv_ring));

  if (ic->i_send_hdrs)
   ib_dma_free_coherent(dev,
        ic->i_send_ring.w_nr *
      sizeof(struct rds_header),
        ic->i_send_hdrs,
        ic->i_send_hdrs_dma);

  if (ic->i_recv_hdrs)
   ib_dma_free_coherent(dev,
        ic->i_recv_ring.w_nr *
      sizeof(struct rds_header),
        ic->i_recv_hdrs,
        ic->i_recv_hdrs_dma);

  if (ic->i_ack)
   ib_dma_free_coherent(dev, sizeof(struct rds_header),
          ic->i_ack, ic->i_ack_dma);

  if (ic->i_sends)
   rds_iw_send_clear_ring(ic);
  if (ic->i_recvs)
   rds_iw_recv_clear_ring(ic);

  if (ic->i_cm_id->qp)
   rdma_destroy_qp(ic->i_cm_id);
  if (ic->i_send_cq)
   ib_destroy_cq(ic->i_send_cq);
  if (ic->i_recv_cq)
   ib_destroy_cq(ic->i_recv_cq);






  if (ic->rds_iwdev)
   rds_iw_remove_conn(ic->rds_iwdev, conn);

  rdma_destroy_id(ic->i_cm_id);

  ic->i_cm_id = ((void*)0);
  ic->i_pd = ((void*)0);
  ic->i_mr = ((void*)0);
  ic->i_send_cq = ((void*)0);
  ic->i_recv_cq = ((void*)0);
  ic->i_send_hdrs = ((void*)0);
  ic->i_recv_hdrs = ((void*)0);
  ic->i_ack = ((void*)0);
 }
 BUG_ON(ic->rds_iwdev);


 if (ic->i_rm) {
  rds_message_put(ic->i_rm);
  ic->i_rm = ((void*)0);
 }


 clear_bit(IB_ACK_IN_FLIGHT, &ic->i_ack_flags);



 ic->i_ack_next = 0;

 ic->i_ack_recv = 0;


 ic->i_flowctl = 0;
 atomic_set(&ic->i_credits, 0);

 rds_iw_ring_init(&ic->i_send_ring, rds_iw_sysctl_max_send_wr);
 rds_iw_ring_init(&ic->i_recv_ring, rds_iw_sysctl_max_recv_wr);

 if (ic->i_iwinc) {
  rds_inc_put(&ic->i_iwinc->ii_inc);
  ic->i_iwinc = ((void*)0);
 }

 vfree(ic->i_sends);
 ic->i_sends = ((void*)0);
 vfree(ic->i_recvs);
 ic->i_recvs = ((void*)0);
 rdsdebug("shutdown complete\n");
}
