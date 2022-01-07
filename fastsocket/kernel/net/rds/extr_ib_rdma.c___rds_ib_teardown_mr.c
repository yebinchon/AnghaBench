
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_mr {unsigned int sg_len; int * sg; scalar_t__ sg_dma_len; struct rds_ib_device* device; } ;
struct rds_ib_device {int dev; } ;
struct page {int dummy; } ;


 int BUG_ON (int ) ;
 int DMA_BIDIRECTIONAL ;
 int ib_dma_unmap_sg (int ,int *,unsigned int,int ) ;
 int irqs_disabled () ;
 int kfree (int *) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 struct page* sg_page (int *) ;

__attribute__((used)) static void __rds_ib_teardown_mr(struct rds_ib_mr *ibmr)
{
 struct rds_ib_device *rds_ibdev = ibmr->device;

 if (ibmr->sg_dma_len) {
  ib_dma_unmap_sg(rds_ibdev->dev,
    ibmr->sg, ibmr->sg_len,
    DMA_BIDIRECTIONAL);
  ibmr->sg_dma_len = 0;
 }


 if (ibmr->sg_len) {
  unsigned int i;

  for (i = 0; i < ibmr->sg_len; ++i) {
   struct page *page = sg_page(&ibmr->sg[i]);



   BUG_ON(irqs_disabled());
   set_page_dirty(page);
   put_page(page);
  }
  kfree(ibmr->sg);

  ibmr->sg = ((void*)0);
  ibmr->sg_len = 0;
 }
}
