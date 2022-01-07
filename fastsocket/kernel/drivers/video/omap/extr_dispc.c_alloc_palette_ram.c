
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fbdev; int * palette_vaddr; int palette_paddr; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_PALETTE_SIZE ;
 int dev_err (int ,char*) ;
 TYPE_2__ dispc ;
 int * dma_alloc_writecombine (int ,int ,int *,int ) ;

__attribute__((used)) static int alloc_palette_ram(void)
{
 dispc.palette_vaddr = dma_alloc_writecombine(dispc.fbdev->dev,
  MAX_PALETTE_SIZE, &dispc.palette_paddr, GFP_KERNEL);
 if (dispc.palette_vaddr == ((void*)0)) {
  dev_err(dispc.fbdev->dev, "failed to alloc palette memory\n");
  return -ENOMEM;
 }

 return 0;
}
