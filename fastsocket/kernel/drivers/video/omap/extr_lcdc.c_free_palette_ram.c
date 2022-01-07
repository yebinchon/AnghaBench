
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int palette_phys; int palette_virt; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int MAX_PALETTE_SIZE ;
 int dma_free_writecombine (int ,int ,int ,int ) ;
 TYPE_2__ lcdc ;

__attribute__((used)) static void free_palette_ram(void)
{
 dma_free_writecombine(lcdc.fbdev->dev, MAX_PALETTE_SIZE,
   lcdc.palette_virt, lcdc.palette_phys);
}
