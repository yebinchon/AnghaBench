
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_mem_region {int paddr; int vaddr; int size; } ;
struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 TYPE_2__ dispc ;
 int dma_free_writecombine (int ,int ,int ,int ) ;

__attribute__((used)) static void free_fbmem(struct omapfb_mem_region *region)
{
 dma_free_writecombine(dispc.fbdev->dev, region->size,
         region->vaddr, region->paddr);
}
