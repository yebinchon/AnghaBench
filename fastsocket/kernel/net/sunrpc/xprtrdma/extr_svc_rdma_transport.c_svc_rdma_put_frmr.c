
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int sc_frmr_q_lock; int sc_frmr_q; } ;
struct svc_rdma_fastreg_mr {int frmr_list; } ;


 int BUG_ON (int) ;
 int frmr_unmap_dma (struct svcxprt_rdma*,struct svc_rdma_fastreg_mr*) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void svc_rdma_put_frmr(struct svcxprt_rdma *rdma,
         struct svc_rdma_fastreg_mr *frmr)
{
 if (frmr) {
  frmr_unmap_dma(rdma, frmr);
  spin_lock_bh(&rdma->sc_frmr_q_lock);
  BUG_ON(!list_empty(&frmr->frmr_list));
  list_add(&frmr->frmr_list, &rdma->sc_frmr_q);
  spin_unlock_bh(&rdma->sc_frmr_q_lock);
 }
}
