
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int io_tlb_overflow_buffer ;
 scalar_t__ swiotlb_virt_to_bus (struct device*,int ) ;

int
swiotlb_dma_mapping_error(struct device *hwdev, dma_addr_t dma_addr)
{
 return (dma_addr == swiotlb_virt_to_bus(hwdev, io_tlb_overflow_buffer));
}
