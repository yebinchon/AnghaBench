
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {size_t size; int direction; int dev_addr; int paddr; struct device* dev; int type; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int add_dma_entry (struct dma_debug_entry*) ;
 int dma_debug_coherent ;
 struct dma_debug_entry* dma_entry_alloc () ;
 int global_disable ;
 scalar_t__ unlikely (int ) ;
 int virt_to_phys (void*) ;

void debug_dma_alloc_coherent(struct device *dev, size_t size,
         dma_addr_t dma_addr, void *virt)
{
 struct dma_debug_entry *entry;

 if (unlikely(global_disable))
  return;

 if (unlikely(virt == ((void*)0)))
  return;

 entry = dma_entry_alloc();
 if (!entry)
  return;

 entry->type = dma_debug_coherent;
 entry->dev = dev;
 entry->paddr = virt_to_phys(virt);
 entry->size = size;
 entry->dev_addr = dma_addr;
 entry->direction = DMA_BIDIRECTIONAL;

 add_dma_entry(entry);
}
