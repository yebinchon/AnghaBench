
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int bits_per_pixel; int xres; int yres; } ;
struct TYPE_3__ {scalar_t__ visual; } ;
struct fb_info {int par; TYPE_2__ var; scalar_t__ pseudo_palette; TYPE_1__ fix; } ;
struct fb_fillrect {int dy; int dx; int width; int height; int rop; size_t color; } ;


 int BBLT_SOLID_FILL ;
 scalar_t__ FB_VISUAL_DIRECTCOLOR ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 int S1DREG_BBLT_CTL0 ;
 int S1DREG_BBLT_CTL1 ;
 int S1DREG_BBLT_DST_START0 ;
 int S1DREG_BBLT_DST_START1 ;
 int S1DREG_BBLT_DST_START2 ;
 int S1DREG_BBLT_FGC0 ;
 int S1DREG_BBLT_FGC1 ;
 int S1DREG_BBLT_HEIGHT0 ;
 int S1DREG_BBLT_HEIGHT1 ;
 int S1DREG_BBLT_MEM_OFF0 ;
 int S1DREG_BBLT_MEM_OFF1 ;
 int S1DREG_BBLT_OP ;
 int S1DREG_BBLT_WIDTH0 ;
 int S1DREG_BBLT_WIDTH1 ;
 int bltbit_wait_bitclear (struct fb_info*,int,int) ;
 int dbg_blit (char*,...) ;
 int s1d13xxxfb_bitblt_lock ;
 int s1d13xxxfb_writereg (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
s1d13xxxfb_bitblt_solidfill(struct fb_info *info, const struct fb_fillrect *rect)
{
 u32 screen_stride, dest;
 u32 fg;
 u16 bpp = (info->var.bits_per_pixel >> 3);


 spin_lock(&s1d13xxxfb_bitblt_lock);


 screen_stride = (bpp * info->var.xres);


 dest = ((rect->dy * screen_stride) + (bpp * rect->dx));

 dbg_blit("(solidfill) dx=%d, dy=%d, stride=%d, dest=%d\n"
   "(solidfill) : rect_width=%d, rect_height=%d\n",
    rect->dx, rect->dy, screen_stride, dest,
    rect->width - 1, rect->height - 1);

 dbg_blit("(solidfill) : xres=%d, yres=%d, bpp=%d\n",
    info->var.xres, info->var.yres,
    info->var.bits_per_pixel);
 dbg_blit("(solidfill) : rop=%d\n", rect->rop);


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_DST_START0, (dest & 0x00ff));
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_DST_START1, ((dest >> 8) & 0x00ff));
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_DST_START2, ((dest >> 16) & 0x00ff));


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_WIDTH0, ((rect->width) & 0x00ff) - 1);
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_WIDTH1, (rect->width >> 8));


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_HEIGHT0, ((rect->height) & 0x00ff) - 1);
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_HEIGHT1, (rect->height >> 8));

 if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
  info->fix.visual == FB_VISUAL_DIRECTCOLOR) {
  fg = ((u32 *)info->pseudo_palette)[rect->color];
  dbg_blit("(solidfill) truecolor/directcolor\n");
  dbg_blit("(solidfill) pseudo_palette[%d] = %d\n", rect->color, fg);
 } else {
  fg = rect->color;
  dbg_blit("(solidfill) color = %d\n", rect->color);
 }


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_FGC0, (fg & 0xff));
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_FGC1, (fg >> 8) & 0xff);


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_CTL0, 0x0);


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_OP, BBLT_SOLID_FILL);


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_CTL1, (info->var.bits_per_pixel >> 4));


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_MEM_OFF0, (screen_stride >> 1) & 0x00ff);
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_MEM_OFF1, (screen_stride >> 9));


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_CTL0, 0x80);


 bltbit_wait_bitclear(info, 0x80, 8000);


 spin_unlock(&s1d13xxxfb_bitblt_lock);
}
