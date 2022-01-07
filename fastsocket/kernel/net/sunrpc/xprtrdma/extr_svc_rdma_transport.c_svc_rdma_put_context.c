
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int sc_ctxt_used; } ;
struct svc_rdma_op_ctxt {int count; int * pages; struct svcxprt_rdma* xprt; } ;


 int BUG_ON (int) ;
 int atomic_dec (int *) ;
 int kmem_cache_free (int ,struct svc_rdma_op_ctxt*) ;
 int put_page (int ) ;
 int svc_rdma_ctxt_cachep ;

void svc_rdma_put_context(struct svc_rdma_op_ctxt *ctxt, int free_pages)
{
 struct svcxprt_rdma *xprt;
 int i;

 BUG_ON(!ctxt);
 xprt = ctxt->xprt;
 if (free_pages)
  for (i = 0; i < ctxt->count; i++)
   put_page(ctxt->pages[i]);

 kmem_cache_free(svc_rdma_ctxt_cachep, ctxt);
 atomic_dec(&xprt->sc_ctxt_used);
}
