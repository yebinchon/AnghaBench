
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct device {int dummy; } ;


 scalar_t__ io_tlb_end ;
 scalar_t__ swiotlb_virt_to_bus (struct device*,scalar_t__) ;

int
swiotlb_dma_supported(struct device *hwdev, u64 mask)
{
 return swiotlb_virt_to_bus(hwdev, io_tlb_end - 1) <= mask;
}
