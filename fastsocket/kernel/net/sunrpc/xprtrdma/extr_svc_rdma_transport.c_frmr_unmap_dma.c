
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svcxprt_rdma {int sc_dma_used; } ;
struct svc_rdma_fastreg_mr {int page_list_len; int direction; TYPE_2__* mr; TYPE_1__* page_list; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {int * page_list; } ;


 int PAGE_SIZE ;
 int atomic_dec (int *) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int ib_dma_unmap_page (int ,int ,int ,int ) ;

__attribute__((used)) static void frmr_unmap_dma(struct svcxprt_rdma *xprt,
      struct svc_rdma_fastreg_mr *frmr)
{
 int page_no;
 for (page_no = 0; page_no < frmr->page_list_len; page_no++) {
  dma_addr_t addr = frmr->page_list->page_list[page_no];
  if (ib_dma_mapping_error(frmr->mr->device, addr))
   continue;
  atomic_dec(&xprt->sc_dma_used);
  ib_dma_unmap_page(frmr->mr->device, addr, PAGE_SIZE,
      frmr->direction);
 }
}
