
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int allocation; int dev; } ;
struct dma_page {int page_list; int vaddr; int dma; } ;
typedef int dma_addr_t ;


 int POOL_POISON_FREED ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (struct dma_page*) ;
 int list_del (int *) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void pool_free_page(struct dma_pool *pool, struct dma_page *page)
{
 dma_addr_t dma = page->dma;




 dma_free_coherent(pool->dev, pool->allocation, page->vaddr, dma);
 list_del(&page->page_list);
 kfree(page);
}
