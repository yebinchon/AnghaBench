
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int SYNC_FOR_DEVICE ;
 int swiotlb_sync_single (struct device*,int ,size_t,int,int ) ;

void
swiotlb_sync_single_for_device(struct device *hwdev, dma_addr_t dev_addr,
          size_t size, enum dma_data_direction dir)
{
 swiotlb_sync_single(hwdev, dev_addr, size, dir, SYNC_FOR_DEVICE);
}
