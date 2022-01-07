
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {size_t size; int direction; int dev_addr; int paddr; struct device* dev; int type; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int check_unmap (struct dma_debug_entry*) ;
 int dma_debug_coherent ;
 int global_disable ;
 scalar_t__ unlikely (int ) ;
 int virt_to_phys (void*) ;

void debug_dma_free_coherent(struct device *dev, size_t size,
    void *virt, dma_addr_t addr)
{
 struct dma_debug_entry ref = {
  .type = dma_debug_coherent,
  .dev = dev,
  .paddr = virt_to_phys(virt),
  .dev_addr = addr,
  .size = size,
  .direction = DMA_BIDIRECTIONAL,
 };

 if (unlikely(global_disable))
  return;

 check_unmap(&ref);
}
