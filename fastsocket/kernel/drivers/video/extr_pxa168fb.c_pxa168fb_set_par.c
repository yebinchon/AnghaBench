
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pxa168fb_mach_info {int dummy; } ;
struct pxa168fb_info {scalar_t__ pix_fmt; scalar_t__ reg_base; TYPE_1__* dev; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int xres_virtual; int bits_per_pixel; int yres; int xres; int left_margin; int right_margin; int upper_margin; int lower_margin; int sync; } ;
struct TYPE_4__ {int line_length; int ypanstep; int visual; } ;
struct fb_info {struct fb_var_screeninfo var; TYPE_2__ fix; struct pxa168fb_info* par; } ;
struct TYPE_3__ {struct pxa168fb_mach_info* platform_data; } ;


 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 scalar_t__ LCD_CFG_GRA_PITCH ;
 scalar_t__ LCD_SPU_DUMB_CTRL ;
 scalar_t__ LCD_SPU_GRA_HPXL_VLN ;
 scalar_t__ LCD_SPU_GZM_HPXL_VLN ;
 scalar_t__ LCD_SPU_H_PORCH ;
 scalar_t__ LCD_SPU_V_H_ACTIVE ;
 scalar_t__ LCD_SPU_V_PORCH ;
 scalar_t__ PIX_FMT_PSEUDOCOLOR ;
 int fb_var_to_videomode (struct fb_videomode*,struct fb_var_screeninfo*) ;
 int readl (scalar_t__) ;
 int set_clock_divider (struct pxa168fb_info*,struct fb_videomode*) ;
 int set_dma_control0 (struct pxa168fb_info*) ;
 int set_dma_control1 (struct pxa168fb_info*,int ) ;
 int set_dumb_panel_control (struct fb_info*) ;
 int set_dumb_screen_dimensions (struct fb_info*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int pxa168fb_set_par(struct fb_info *info)
{
 struct pxa168fb_info *fbi = info->par;
 struct fb_var_screeninfo *var = &info->var;
 struct fb_videomode mode;
 u32 x;
 struct pxa168fb_mach_info *mi;

 mi = fbi->dev->platform_data;




 if (fbi->pix_fmt == PIX_FMT_PSEUDOCOLOR)
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
 else
  info->fix.visual = FB_VISUAL_TRUECOLOR;
 info->fix.line_length = var->xres_virtual * var->bits_per_pixel / 8;
 info->fix.ypanstep = var->yres;




 x = readl(fbi->reg_base + LCD_SPU_DUMB_CTRL);
 writel(x & ~1, fbi->reg_base + LCD_SPU_DUMB_CTRL);




 writel((var->yres << 16) | var->xres,
  fbi->reg_base + LCD_SPU_V_H_ACTIVE);




 fb_var_to_videomode(&mode, &info->var);


 set_clock_divider(fbi, &mode);


 set_dma_control0(fbi);
 set_dma_control1(fbi, info->var.sync);




 x = readl(fbi->reg_base + LCD_CFG_GRA_PITCH);
 x = (x & ~0xFFFF) | ((var->xres_virtual * var->bits_per_pixel) >> 3);
 writel(x, fbi->reg_base + LCD_CFG_GRA_PITCH);
 writel((var->yres << 16) | var->xres,
  fbi->reg_base + LCD_SPU_GRA_HPXL_VLN);
 writel((var->yres << 16) | var->xres,
  fbi->reg_base + LCD_SPU_GZM_HPXL_VLN);




 set_dumb_panel_control(info);
 set_dumb_screen_dimensions(info);

 writel((var->left_margin << 16) | var->right_margin,
   fbi->reg_base + LCD_SPU_H_PORCH);
 writel((var->upper_margin << 16) | var->lower_margin,
   fbi->reg_base + LCD_SPU_V_PORCH);




 x = readl(fbi->reg_base + LCD_SPU_DUMB_CTRL);
 writel(x | 1, fbi->reg_base + LCD_SPU_DUMB_CTRL);

 return 0;
}
