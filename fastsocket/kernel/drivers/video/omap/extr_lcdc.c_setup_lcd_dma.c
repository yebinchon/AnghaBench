
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int mirror; } ;
struct omapfb_plane_struct {TYPE_3__ info; } ;
struct fb_var_screeninfo {int rotate; } ;
struct TYPE_8__ {unsigned long vram_phys; unsigned long frame_offset; scalar_t__ color_mode; int xres; int bpp; int yres; int screen_width; TYPE_2__* fbdev; } ;
struct TYPE_6__ {int dev; TYPE_1__** fb_info; } ;
struct TYPE_5__ {struct fb_var_screeninfo var; struct omapfb_plane_struct* par; } ;


 int BUG () ;
 scalar_t__ OMAPFB_COLOR_YUV420 ;



 scalar_t__ cpu_is_omap15xx () ;
 int dev_dbg (int ,char*,unsigned long,int,int,int) ;
 TYPE_4__ lcdc ;
 int omap_set_lcd_dma_b1 (unsigned long,int,int,int const) ;
 int omap_set_lcd_dma_b1_mirror (int ) ;
 int omap_set_lcd_dma_b1_rotation (int) ;
 int omap_set_lcd_dma_b1_vxres (int) ;
 int omap_setup_lcd_dma () ;

__attribute__((used)) static void setup_lcd_dma(void)
{
 static const int dma_elem_type[] = {
  0,
  128,
  130,
  0,
  129,
 };
 struct omapfb_plane_struct *plane = lcdc.fbdev->fb_info[0]->par;
 struct fb_var_screeninfo *var = &lcdc.fbdev->fb_info[0]->var;
 unsigned long src;
 int esize, xelem, yelem;

 src = lcdc.vram_phys + lcdc.frame_offset;

 switch (var->rotate) {
 case 0:
  if (plane->info.mirror || (src & 3) ||
      lcdc.color_mode == OMAPFB_COLOR_YUV420 ||
      (lcdc.xres & 1))
   esize = 2;
  else
   esize = 4;
  xelem = lcdc.xres * lcdc.bpp / 8 / esize;
  yelem = lcdc.yres;
  break;
 case 90:
 case 180:
 case 270:
  if (cpu_is_omap15xx()) {
   BUG();
  }
  esize = 2;
  xelem = lcdc.yres * lcdc.bpp / 16;
  yelem = lcdc.xres;
  break;
 default:
  BUG();
  return;
 }





 omap_set_lcd_dma_b1(src, xelem, yelem, dma_elem_type[esize]);
 if (!cpu_is_omap15xx()) {
  int bpp = lcdc.bpp;





  if (lcdc.color_mode == OMAPFB_COLOR_YUV420)
   bpp = 16;

  omap_set_lcd_dma_b1_vxres(
   lcdc.screen_width * bpp / 8 / esize);

  omap_set_lcd_dma_b1_rotation(var->rotate);
  omap_set_lcd_dma_b1_mirror(plane->info.mirror);
 }
 omap_setup_lcd_dma();
}
