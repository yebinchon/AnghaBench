
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int WARN_ON (int ) ;
 int dma_to_phys (struct device*,int ) ;
 int do_unmap_single (struct device*,void*,size_t,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 int irqs_disabled () ;
 int is_swiotlb_buffer (int ) ;

void
swiotlb_free_coherent(struct device *hwdev, size_t size, void *vaddr,
        dma_addr_t dev_addr)
{
 phys_addr_t paddr = dma_to_phys(hwdev, dev_addr);

 WARN_ON(irqs_disabled());
 if (!is_swiotlb_buffer(paddr))
  free_pages((unsigned long)vaddr, get_order(size));
 else

  do_unmap_single(hwdev, vaddr, size, DMA_TO_DEVICE);
}
