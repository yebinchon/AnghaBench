
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int swiotlb_sync_single (struct device*,scalar_t__,size_t,int,int) ;

__attribute__((used)) static void
swiotlb_sync_single_range(struct device *hwdev, dma_addr_t dev_addr,
     unsigned long offset, size_t size,
     int dir, int target)
{
 swiotlb_sync_single(hwdev, dev_addr + offset, size, dir, target);
}
