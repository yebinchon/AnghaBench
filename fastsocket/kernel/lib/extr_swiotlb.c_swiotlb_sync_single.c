
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int dma_mark_clean (int ,size_t) ;
 int dma_to_phys (struct device*,int ) ;
 scalar_t__ is_swiotlb_buffer (int ) ;
 int phys_to_virt (int ) ;
 int sync_single (struct device*,int ,size_t,int,int) ;

__attribute__((used)) static void
swiotlb_sync_single(struct device *hwdev, dma_addr_t dev_addr,
      size_t size, int dir, int target)
{
 phys_addr_t paddr = dma_to_phys(hwdev, dev_addr);

 BUG_ON(dir == DMA_NONE);

 if (is_swiotlb_buffer(paddr)) {
  sync_single(hwdev, phys_to_virt(paddr), size, dir, target);
  return;
 }

 if (dir != DMA_FROM_DEVICE)
  return;

 dma_mark_clean(phys_to_virt(paddr), size);
}
