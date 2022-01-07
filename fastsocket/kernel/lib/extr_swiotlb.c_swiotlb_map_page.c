
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 scalar_t__ dma_capable (struct device*,int ,size_t) ;
 void* io_tlb_overflow_buffer ;
 void* map_single (struct device*,scalar_t__,size_t,int) ;
 scalar_t__ page_to_phys (struct page*) ;
 int panic (char*) ;
 int phys_to_dma (struct device*,scalar_t__) ;
 int swiotlb_force ;
 int swiotlb_full (struct device*,size_t,int,int) ;
 int swiotlb_virt_to_bus (struct device*,void*) ;

dma_addr_t swiotlb_map_page(struct device *dev, struct page *page,
       unsigned long offset, size_t size,
       enum dma_data_direction dir,
       struct dma_attrs *attrs)
{
 phys_addr_t phys = page_to_phys(page) + offset;
 dma_addr_t dev_addr = phys_to_dma(dev, phys);
 void *map;

 BUG_ON(dir == DMA_NONE);





 if (dma_capable(dev, dev_addr, size) && !swiotlb_force)
  return dev_addr;




 map = map_single(dev, phys, size, dir);
 if (!map) {
  swiotlb_full(dev, size, dir, 1);
  map = io_tlb_overflow_buffer;
 }

 dev_addr = swiotlb_virt_to_bus(dev, map);




 if (!dma_capable(dev, dev_addr, size))
  panic("map_single: bounce buffer is not DMA'ble");

 return dev_addr;
}
