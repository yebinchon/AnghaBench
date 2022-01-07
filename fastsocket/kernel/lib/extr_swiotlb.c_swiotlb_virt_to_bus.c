
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int phys_to_dma (struct device*,int ) ;
 int virt_to_phys (void volatile*) ;

__attribute__((used)) static dma_addr_t swiotlb_virt_to_bus(struct device *hwdev,
          volatile void *address)
{
 return phys_to_dma(hwdev, virt_to_phys(address));
}
