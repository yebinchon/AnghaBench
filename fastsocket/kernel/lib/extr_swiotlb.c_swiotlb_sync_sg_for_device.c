
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int SYNC_FOR_DEVICE ;
 int swiotlb_sync_sg (struct device*,struct scatterlist*,int,int,int ) ;

void
swiotlb_sync_sg_for_device(struct device *hwdev, struct scatterlist *sg,
      int nelems, enum dma_data_direction dir)
{
 swiotlb_sync_sg(hwdev, sg, nelems, dir, SYNC_FOR_DEVICE);
}
