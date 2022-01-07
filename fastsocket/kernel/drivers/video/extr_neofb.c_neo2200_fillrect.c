
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u32 ;
struct neofb_par {TYPE_2__* neo2200; } ;
struct TYPE_3__ {int xres_virtual; int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; scalar_t__ pseudo_palette; struct neofb_par* par; } ;
struct fb_fillrect {int dx; int dy; int color; int height; int width; scalar_t__ rop; } ;
struct TYPE_4__ {int xyExt; int dstStart; int fgColor; int bltCntl; } ;


 int NEO_BC0_SRC_IS_FG ;
 int NEO_BC3_FIFO_EN ;
 int NEO_BC3_SKIP_MAPPING ;
 int neo2200_wait_fifo (struct fb_info*,int) ;
 int writel (int,int *) ;

__attribute__((used)) static void
neo2200_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
{
 struct neofb_par *par = info->par;
 u_long dst, rop;

 dst = rect->dx + rect->dy * info->var.xres_virtual;
 rop = rect->rop ? 0x060000 : 0x0c0000;

 neo2200_wait_fifo(info, 4);


 writel(NEO_BC3_FIFO_EN |
        NEO_BC0_SRC_IS_FG | NEO_BC3_SKIP_MAPPING |


        rop, &par->neo2200->bltCntl);

 switch (info->var.bits_per_pixel) {
 case 8:
  writel(rect->color, &par->neo2200->fgColor);
  break;
 case 16:
 case 24:
  writel(((u32 *) (info->pseudo_palette))[rect->color],
         &par->neo2200->fgColor);
  break;
 }

 writel(dst * ((info->var.bits_per_pixel + 7) >> 3),
        &par->neo2200->dstStart);
 writel((rect->height << 16) | (rect->width & 0xffff),
        &par->neo2200->xyExt);
}
