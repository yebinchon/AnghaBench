
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int line_length; int smem_start; } ;
struct TYPE_3__ {int xres_virtual; int bits_per_pixel; int yres; int xres; int pixclock; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; struct ep93xx_fbi* par; } ;
struct ep93xx_fbi {int clk; } ;


 int EP93XXFB_LINE_LENGTH ;
 int EP93XXFB_SCREEN_LINES ;
 int EP93XXFB_SCREEN_PAGE ;
 int EP93XXFB_VLINE_STEP ;
 int PICOS2KHZ (int ) ;
 int clk_set_rate (int ,int) ;
 int ep93xxfb_set_timing (struct fb_info*) ;
 int ep93xxfb_set_video_attribs (struct fb_info*) ;
 int ep93xxfb_writel (struct ep93xx_fbi*,int,int ) ;

__attribute__((used)) static int ep93xxfb_set_par(struct fb_info *info)
{
 struct ep93xx_fbi *fbi = info->par;

 clk_set_rate(fbi->clk, 1000 * PICOS2KHZ(info->var.pixclock));

 ep93xxfb_set_timing(info);

 info->fix.line_length = info->var.xres_virtual *
  info->var.bits_per_pixel / 8;

 ep93xxfb_writel(fbi, info->fix.smem_start, EP93XXFB_SCREEN_PAGE);
 ep93xxfb_writel(fbi, info->var.yres - 1, EP93XXFB_SCREEN_LINES);
 ep93xxfb_writel(fbi, ((info->var.xres * info->var.bits_per_pixel)
         / 32) - 1, EP93XXFB_LINE_LENGTH);
 ep93xxfb_writel(fbi, info->fix.line_length / 4, EP93XXFB_VLINE_STEP);
 ep93xxfb_set_video_attribs(info);
 return 0;
}
