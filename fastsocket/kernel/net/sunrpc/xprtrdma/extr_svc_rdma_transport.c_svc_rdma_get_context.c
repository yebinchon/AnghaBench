
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int sc_ctxt_used; } ;
struct svc_rdma_op_ctxt {int * frmr; scalar_t__ count; int dto_q; struct svcxprt_rdma* xprt; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 struct svc_rdma_op_ctxt* kmem_cache_alloc (int ,int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (int ) ;
 int svc_rdma_ctxt_cachep ;

struct svc_rdma_op_ctxt *svc_rdma_get_context(struct svcxprt_rdma *xprt)
{
 struct svc_rdma_op_ctxt *ctxt;

 while (1) {
  ctxt = kmem_cache_alloc(svc_rdma_ctxt_cachep, GFP_KERNEL);
  if (ctxt)
   break;
  schedule_timeout_uninterruptible(msecs_to_jiffies(500));
 }
 ctxt->xprt = xprt;
 INIT_LIST_HEAD(&ctxt->dto_q);
 ctxt->count = 0;
 ctxt->frmr = ((void*)0);
 atomic_inc(&xprt->sc_ctxt_used);
 return ctxt;
}
