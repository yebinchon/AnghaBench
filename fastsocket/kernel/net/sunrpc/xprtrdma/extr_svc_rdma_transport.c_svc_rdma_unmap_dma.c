
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svcxprt_rdma {scalar_t__ sc_dma_lkey; TYPE_1__* sc_cm_id; int sc_dma_used; } ;
struct svc_rdma_op_ctxt {int count; int direction; TYPE_2__* sge; struct svcxprt_rdma* xprt; } ;
struct TYPE_4__ {scalar_t__ lkey; scalar_t__ length; int addr; } ;
struct TYPE_3__ {int device; } ;


 int atomic_dec (int *) ;
 int ib_dma_unmap_page (int ,int ,scalar_t__,int ) ;

void svc_rdma_unmap_dma(struct svc_rdma_op_ctxt *ctxt)
{
 struct svcxprt_rdma *xprt = ctxt->xprt;
 int i;
 for (i = 0; i < ctxt->count && ctxt->sge[i].length; i++) {






  if (ctxt->sge[i].lkey == xprt->sc_dma_lkey) {
   atomic_dec(&xprt->sc_dma_used);
   ib_dma_unmap_page(xprt->sc_cm_id->device,
         ctxt->sge[i].addr,
         ctxt->sge[i].length,
         ctxt->direction);
  }
 }
}
