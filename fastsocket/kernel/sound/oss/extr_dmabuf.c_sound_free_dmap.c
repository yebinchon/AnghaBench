
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_buffparms {int mapping_flags; int buffsize; int * raw_buf; } ;


 int ClearPageReserved (struct page*) ;
 int DMA_MAP_MAPPED ;
 int PAGE_SIZE ;
 int free_pages (unsigned long,int) ;
 struct page* virt_to_page (unsigned long) ;

__attribute__((used)) static void sound_free_dmap(struct dma_buffparms *dmap)
{
 int sz, size;
 struct page *page;
 unsigned long start_addr, end_addr;

 if (dmap->raw_buf == ((void*)0))
  return;
 if (dmap->mapping_flags & DMA_MAP_MAPPED)
  return;
 for (sz = 0, size = PAGE_SIZE; size < dmap->buffsize; sz++, size <<= 1);

 start_addr = (unsigned long) dmap->raw_buf;
 end_addr = start_addr + dmap->buffsize;

 for (page = virt_to_page(start_addr); page <= virt_to_page(end_addr); page++)
  ClearPageReserved(page);

 free_pages((unsigned long) dmap->raw_buf, sz);
 dmap->raw_buf = ((void*)0);
}
