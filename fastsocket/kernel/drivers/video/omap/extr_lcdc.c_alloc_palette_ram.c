
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * palette_virt; TYPE_1__* fbdev; int palette_phys; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_PALETTE_SIZE ;
 int dev_err (int ,char*) ;
 int * dma_alloc_writecombine (int ,int ,int *,int ) ;
 TYPE_2__ lcdc ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static int alloc_palette_ram(void)
{
 lcdc.palette_virt = dma_alloc_writecombine(lcdc.fbdev->dev,
  MAX_PALETTE_SIZE, &lcdc.palette_phys, GFP_KERNEL);
 if (lcdc.palette_virt == ((void*)0)) {
  dev_err(lcdc.fbdev->dev, "failed to alloc palette memory\n");
  return -ENOMEM;
 }
 memset(lcdc.palette_virt, 0, MAX_PALETTE_SIZE);

 return 0;
}
