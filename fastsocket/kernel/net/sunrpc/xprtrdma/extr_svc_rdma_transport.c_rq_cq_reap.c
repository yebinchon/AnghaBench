
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xpt_flags; } ;
struct svcxprt_rdma {TYPE_1__ sc_xprt; int sc_flags; int sc_rq_dto_lock; int sc_rq_dto_q; int sc_rq_cq; } ;
struct svc_rdma_op_ctxt {scalar_t__ wc_status; int dto_q; int byte_len; } ;
struct ib_wc {scalar_t__ status; int byte_len; scalar_t__ wr_id; } ;


 int IB_CQ_NEXT_COMP ;
 scalar_t__ IB_WC_SUCCESS ;
 int RDMAXPRT_CONN_PENDING ;
 int RDMAXPRT_RQ_PENDING ;
 int XPT_CLOSE ;
 int XPT_DATA ;
 int atomic_inc (int *) ;
 int dprintk (char*,struct svc_rdma_op_ctxt*) ;
 int ib_poll_cq (int ,int,struct ib_wc*) ;
 int ib_req_notify_cq (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int rdma_stat_rq_poll ;
 int rdma_stat_rq_prod ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int svc_rdma_put_context (struct svc_rdma_op_ctxt*,int) ;
 int svc_rdma_unmap_dma (struct svc_rdma_op_ctxt*) ;
 int svc_xprt_enqueue (TYPE_1__*) ;
 int svc_xprt_put (TYPE_1__*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rq_cq_reap(struct svcxprt_rdma *xprt)
{
 int ret;
 struct ib_wc wc;
 struct svc_rdma_op_ctxt *ctxt = ((void*)0);

 if (!test_and_clear_bit(RDMAXPRT_RQ_PENDING, &xprt->sc_flags))
  return;

 ib_req_notify_cq(xprt->sc_rq_cq, IB_CQ_NEXT_COMP);
 atomic_inc(&rdma_stat_rq_poll);

 while ((ret = ib_poll_cq(xprt->sc_rq_cq, 1, &wc)) > 0) {
  ctxt = (struct svc_rdma_op_ctxt *)(unsigned long)wc.wr_id;
  ctxt->wc_status = wc.status;
  ctxt->byte_len = wc.byte_len;
  svc_rdma_unmap_dma(ctxt);
  if (wc.status != IB_WC_SUCCESS) {

   dprintk("svcrdma: transport closing putting ctxt %p\n", ctxt);
   set_bit(XPT_CLOSE, &xprt->sc_xprt.xpt_flags);
   svc_rdma_put_context(ctxt, 1);
   svc_xprt_put(&xprt->sc_xprt);
   continue;
  }
  spin_lock_bh(&xprt->sc_rq_dto_lock);
  list_add_tail(&ctxt->dto_q, &xprt->sc_rq_dto_q);
  spin_unlock_bh(&xprt->sc_rq_dto_lock);
  svc_xprt_put(&xprt->sc_xprt);
 }

 if (ctxt)
  atomic_inc(&rdma_stat_rq_prod);

 set_bit(XPT_DATA, &xprt->sc_xprt.xpt_flags);





 if (!test_bit(RDMAXPRT_CONN_PENDING, &xprt->sc_flags))
  svc_xprt_enqueue(&xprt->sc_xprt);
}
