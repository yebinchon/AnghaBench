
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int page_list; int allocation; int dev; } ;
struct dma_page {scalar_t__ offset; scalar_t__ in_use; int page_list; scalar_t__ vaddr; int dma; } ;
typedef int gfp_t ;


 int POOL_POISON_FREED ;
 scalar_t__ dma_alloc_coherent (int ,int ,int *,int ) ;
 int kfree (struct dma_page*) ;
 struct dma_page* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memset (scalar_t__,int ,int ) ;
 int pool_initialise_page (struct dma_pool*,struct dma_page*) ;

__attribute__((used)) static struct dma_page *pool_alloc_page(struct dma_pool *pool, gfp_t mem_flags)
{
 struct dma_page *page;

 page = kmalloc(sizeof(*page), mem_flags);
 if (!page)
  return ((void*)0);
 page->vaddr = dma_alloc_coherent(pool->dev, pool->allocation,
      &page->dma, mem_flags);
 if (page->vaddr) {



  pool_initialise_page(pool, page);
  list_add(&page->page_list, &pool->page_list);
  page->in_use = 0;
  page->offset = 0;
 } else {
  kfree(page);
  page = ((void*)0);
 }
 return page;
}
