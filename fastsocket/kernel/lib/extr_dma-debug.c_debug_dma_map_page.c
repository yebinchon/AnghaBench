
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_debug_entry {size_t size; int direction; int type; int dev_addr; scalar_t__ paddr; struct device* dev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int PageHighMem (struct page*) ;
 int add_dma_entry (struct dma_debug_entry*) ;
 int check_for_illegal_area (struct device*,void*,size_t) ;
 int check_for_stack (struct device*,void*) ;
 int dma_debug_page ;
 int dma_debug_single ;
 struct dma_debug_entry* dma_entry_alloc () ;
 int dma_mapping_error (struct device*,int ) ;
 int global_disable ;
 void* page_address (struct page*) ;
 scalar_t__ page_to_phys (struct page*) ;
 scalar_t__ unlikely (int ) ;

void debug_dma_map_page(struct device *dev, struct page *page, size_t offset,
   size_t size, int direction, dma_addr_t dma_addr,
   bool map_single)
{
 struct dma_debug_entry *entry;

 if (unlikely(global_disable))
  return;

 if (unlikely(dma_mapping_error(dev, dma_addr)))
  return;

 entry = dma_entry_alloc();
 if (!entry)
  return;

 entry->dev = dev;
 entry->type = dma_debug_page;
 entry->paddr = page_to_phys(page) + offset;
 entry->dev_addr = dma_addr;
 entry->size = size;
 entry->direction = direction;

 if (map_single)
  entry->type = dma_debug_single;

 if (!PageHighMem(page)) {
  void *addr = page_address(page) + offset;

  check_for_stack(dev, addr);
  check_for_illegal_area(dev, addr, size);
 }

 add_dma_entry(entry);
}
