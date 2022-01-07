
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpt_flags; } ;
struct svcxprt_rdma {TYPE_1__ sc_xprt; int sc_send_wait; int sc_sq_count; struct ib_cq* sc_sq_cq; int sc_flags; } ;
struct svc_rdma_op_ctxt {int dummy; } ;
struct ib_wc {scalar_t__ status; scalar_t__ wr_id; } ;
struct ib_cq {int dummy; } ;


 int IB_CQ_NEXT_COMP ;
 scalar_t__ IB_WC_SUCCESS ;
 int RDMAXPRT_SQ_PENDING ;
 int XPT_CLOSE ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int ib_poll_cq (struct ib_cq*,int,struct ib_wc*) ;
 int ib_req_notify_cq (struct ib_cq*,int ) ;
 int process_context (struct svcxprt_rdma*,struct svc_rdma_op_ctxt*) ;
 int rdma_stat_sq_poll ;
 int rdma_stat_sq_prod ;
 int set_bit (int ,int *) ;
 int svc_xprt_put (TYPE_1__*) ;
 int test_and_clear_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void sq_cq_reap(struct svcxprt_rdma *xprt)
{
 struct svc_rdma_op_ctxt *ctxt = ((void*)0);
 struct ib_wc wc;
 struct ib_cq *cq = xprt->sc_sq_cq;
 int ret;

 if (!test_and_clear_bit(RDMAXPRT_SQ_PENDING, &xprt->sc_flags))
  return;

 ib_req_notify_cq(xprt->sc_sq_cq, IB_CQ_NEXT_COMP);
 atomic_inc(&rdma_stat_sq_poll);
 while ((ret = ib_poll_cq(cq, 1, &wc)) > 0) {
  if (wc.status != IB_WC_SUCCESS)

   set_bit(XPT_CLOSE, &xprt->sc_xprt.xpt_flags);


  atomic_dec(&xprt->sc_sq_count);
  wake_up(&xprt->sc_send_wait);

  ctxt = (struct svc_rdma_op_ctxt *)(unsigned long)wc.wr_id;
  if (ctxt)
   process_context(xprt, ctxt);

  svc_xprt_put(&xprt->sc_xprt);
 }

 if (ctxt)
  atomic_inc(&rdma_stat_sq_prod);
}
