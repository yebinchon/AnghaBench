
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int SYNC_FOR_CPU ;
 int swiotlb_sync_single_range (struct device*,int ,unsigned long,size_t,int,int ) ;

void
swiotlb_sync_single_range_for_cpu(struct device *hwdev, dma_addr_t dev_addr,
      unsigned long offset, size_t size,
      enum dma_data_direction dir)
{
 swiotlb_sync_single_range(hwdev, dev_addr, offset, size, dir,
      SYNC_FOR_CPU);
}
