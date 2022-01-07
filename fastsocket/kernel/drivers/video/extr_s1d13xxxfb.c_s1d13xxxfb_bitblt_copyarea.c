
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int bits_per_pixel; int xres; } ;
struct fb_info {int par; TYPE_1__ var; } ;
struct fb_copyarea {int sx; int sy; int dx; int dy; int width; int height; } ;


 int S1DREG_BBLT_CC_EXP ;
 int S1DREG_BBLT_CTL0 ;
 int S1DREG_BBLT_CTL1 ;
 int S1DREG_BBLT_DST_START0 ;
 int S1DREG_BBLT_DST_START1 ;
 int S1DREG_BBLT_DST_START2 ;
 int S1DREG_BBLT_HEIGHT0 ;
 int S1DREG_BBLT_HEIGHT1 ;
 int S1DREG_BBLT_MEM_OFF0 ;
 int S1DREG_BBLT_MEM_OFF1 ;
 int S1DREG_BBLT_OP ;
 int S1DREG_BBLT_SRC_START0 ;
 int S1DREG_BBLT_SRC_START1 ;
 int S1DREG_BBLT_SRC_START2 ;
 int S1DREG_BBLT_WIDTH0 ;
 int S1DREG_BBLT_WIDTH1 ;
 int bltbit_wait_bitclear (struct fb_info*,int,int) ;
 int dbg_blit (char*,...) ;
 int s1d13xxxfb_bitblt_lock ;
 int s1d13xxxfb_writereg (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
s1d13xxxfb_bitblt_copyarea(struct fb_info *info, const struct fb_copyarea *area)
{
 u32 dst, src;
 u32 stride;
 u16 reverse = 0;
 u16 sx = area->sx, sy = area->sy;
 u16 dx = area->dx, dy = area->dy;
 u16 width = area->width, height = area->height;
 u16 bpp;

 spin_lock(&s1d13xxxfb_bitblt_lock);


 bpp = (info->var.bits_per_pixel >> 3);
 stride = bpp * info->var.xres;


 if ((dy > sy) || ((dy == sy) && (dx >= sx))) {
  dst = (((dy + height - 1) * stride) + (bpp * (dx + width - 1)));
  src = (((sy + height - 1) * stride) + (bpp * (sx + width - 1)));
  reverse = 1;

 } else {
  dst = (dy * stride) + (bpp * dx);
  src = (sy * stride) + (bpp * sx);
 }


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_SRC_START0, (src & 0xff));
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_SRC_START1, (src >> 8) & 0x00ff);
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_SRC_START2, (src >> 16) & 0x00ff);


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_DST_START0, (dst & 0xff));
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_DST_START1, (dst >> 8) & 0x00ff);
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_DST_START2, (dst >> 16) & 0x00ff);


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_WIDTH0, (width & 0xff) - 1);
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_WIDTH1, (width >> 8));

 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_HEIGHT0, (height & 0xff) - 1);
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_HEIGHT1, (height >> 8));


 if (reverse == 1) {
  dbg_blit("(copyarea) negative rop\n");
  s1d13xxxfb_writereg(info->par, S1DREG_BBLT_OP, 0x03);
 } else {
  s1d13xxxfb_writereg(info->par, S1DREG_BBLT_OP, 0x02);
  dbg_blit("(copyarea) positive rop\n");
 }


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_CTL0, 0x0);


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_CTL1, (bpp >> 1));


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_MEM_OFF0, (stride >> 1) & 0xff);
 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_MEM_OFF1, (stride >> 9));

 dbg_blit("(copyarea) dx=%d, dy=%d\n", dx, dy);
 dbg_blit("(copyarea) sx=%d, sy=%d\n", sx, sy);
 dbg_blit("(copyarea) width=%d, height=%d\n", width - 1, height - 1);
 dbg_blit("(copyarea) stride=%d\n", stride);
 dbg_blit("(copyarea) bpp=%d=0x0%d, mem_offset1=%d, mem_offset2=%d\n", bpp, (bpp >> 1),
  (stride >> 1) & 0xff, stride >> 9);

 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_CC_EXP, 0x0c);


 s1d13xxxfb_writereg(info->par, S1DREG_BBLT_CTL0, 0x80);


 bltbit_wait_bitclear(info, 0x80, 8000);

 spin_unlock(&s1d13xxxfb_bitblt_lock);
}
