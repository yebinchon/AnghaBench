
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int unmap_single (struct device*,int ,size_t,int) ;

void swiotlb_unmap_page(struct device *hwdev, dma_addr_t dev_addr,
   size_t size, enum dma_data_direction dir,
   struct dma_attrs *attrs)
{
 unmap_single(hwdev, dev_addr, size, dir);
}
