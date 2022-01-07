
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_mem_region {int * vaddr; int paddr; int size; } ;
struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 TYPE_2__ dispc ;
 int * dma_alloc_writecombine (int ,int ,int *,int ) ;

__attribute__((used)) static int alloc_fbmem(struct omapfb_mem_region *region)
{
 region->vaddr = dma_alloc_writecombine(dispc.fbdev->dev,
   region->size, &region->paddr, GFP_KERNEL);

 if (region->vaddr == ((void*)0)) {
  dev_err(dispc.fbdev->dev, "unable to allocate FB DMA memory\n");
  return -ENOMEM;
 }

 return 0;
}
