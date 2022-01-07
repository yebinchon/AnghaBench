
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_mem_region {int size; int alloc; int * vaddr; int paddr; } ;
struct lcd_panel {int bpp; int x_res; int y_res; } ;
struct TYPE_4__ {int vram_size; int * vram_virt; int vram_phys; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; struct lcd_panel* panel; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_ALIGN (int) ;
 int dev_err (int ,char*) ;
 int * dma_alloc_writecombine (int ,int,int *,int ) ;
 TYPE_2__ lcdc ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int alloc_fbmem(struct omapfb_mem_region *region)
{
 int bpp;
 int frame_size;
 struct lcd_panel *panel = lcdc.fbdev->panel;

 bpp = panel->bpp;
 if (bpp == 12)
  bpp = 16;
 frame_size = PAGE_ALIGN(panel->x_res * bpp / 8 * panel->y_res);
 if (region->size > frame_size)
  frame_size = region->size;
 lcdc.vram_size = frame_size;
 lcdc.vram_virt = dma_alloc_writecombine(lcdc.fbdev->dev,
   lcdc.vram_size, &lcdc.vram_phys, GFP_KERNEL);
 if (lcdc.vram_virt == ((void*)0)) {
  dev_err(lcdc.fbdev->dev, "unable to allocate FB DMA memory\n");
  return -ENOMEM;
 }
 region->size = frame_size;
 region->paddr = lcdc.vram_phys;
 region->vaddr = lcdc.vram_virt;
 region->alloc = 1;

 memset(lcdc.vram_virt, 0, lcdc.vram_size);

 return 0;
}
