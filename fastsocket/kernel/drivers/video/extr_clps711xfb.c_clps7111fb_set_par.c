
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bits_per_pixel; int xres_virtual; int yres_virtual; int pixclock; } ;
struct TYPE_3__ {int line_length; void* visual; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; } ;


 void* FB_VISUAL_MONO01 ;
 void* FB_VISUAL_PSEUDOCOLOR ;
 int LCDCON ;
 unsigned int LCDCON_GSEN ;
 unsigned int LCDCON_GSMD ;
 int SYSCON1 ;
 unsigned int SYSCON1_LCDEN ;
 unsigned int clps_readl (int ) ;
 int clps_writel (unsigned int,int ) ;
 int lcd_ac_prescale ;

__attribute__((used)) static int
clps7111fb_set_par(struct fb_info *info)
{
 unsigned int lcdcon, syscon, pixclock;

 switch (info->var.bits_per_pixel) {
 case 1:
  info->fix.visual = FB_VISUAL_MONO01;
  break;
 case 2:
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 case 4:
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 }

 info->fix.line_length = info->var.xres_virtual * info->var.bits_per_pixel / 8;

 lcdcon = (info->var.xres_virtual * info->var.yres_virtual * info->var.bits_per_pixel) / 128 - 1;
 lcdcon |= ((info->var.xres_virtual / 16) - 1) << 13;
 lcdcon |= lcd_ac_prescale << 25;
 pixclock = 9 * info->var.pixclock / 244140 - 1;
 lcdcon |= pixclock << 19;

 if (info->var.bits_per_pixel == 4)
  lcdcon |= LCDCON_GSMD;
 if (info->var.bits_per_pixel >= 2)
  lcdcon |= LCDCON_GSEN;




 syscon = clps_readl(SYSCON1);
 clps_writel(syscon & ~SYSCON1_LCDEN, SYSCON1);
 clps_writel(lcdcon, LCDCON);
 clps_writel(syscon | SYSCON1_LCDEN, SYSCON1);
 return 0;
}
