
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gmc_brush_datatype; int gmc_rop3; } ;
union dp_gui_master_cntl_u {int val; TYPE_1__ f; } ;
struct fb_info {scalar_t__ state; int flags; } ;
struct fb_fillrect {int color; int dy; int dx; int width; int height; } ;


 int FBINFO_HWACCEL_DISABLED ;
 scalar_t__ FBINFO_STATE_RUNNING ;
 int GMC_BRUSH_SOLID_COLOR ;
 int ROP3_PATCOPY ;
 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 scalar_t__ mmDP_BRUSH_FRGD_CLR ;
 scalar_t__ mmDP_GUI_MASTER_CNTL ;
 scalar_t__ mmDST_WIDTH_HEIGHT ;
 scalar_t__ mmDST_Y_X ;
 int readl (scalar_t__) ;
 scalar_t__ remapped_regs ;
 int w100_fifo_wait (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void w100fb_fillrect(struct fb_info *info,
                            const struct fb_fillrect *rect)
{
 union dp_gui_master_cntl_u gmc;

 if (info->state != FBINFO_STATE_RUNNING)
  return;
 if (info->flags & FBINFO_HWACCEL_DISABLED) {
  cfb_fillrect(info, rect);
  return;
 }

 gmc.val = readl(remapped_regs + mmDP_GUI_MASTER_CNTL);
 gmc.f.gmc_rop3 = ROP3_PATCOPY;
 gmc.f.gmc_brush_datatype = GMC_BRUSH_SOLID_COLOR;
 w100_fifo_wait(2);
 writel(gmc.val, remapped_regs + mmDP_GUI_MASTER_CNTL);
 writel(rect->color, remapped_regs + mmDP_BRUSH_FRGD_CLR);

 w100_fifo_wait(2);
 writel((rect->dy << 16) | (rect->dx & 0xffff), remapped_regs + mmDST_Y_X);
 writel((rect->width << 16) | (rect->height & 0xffff),
        remapped_regs + mmDST_WIDTH_HEIGHT);
}
