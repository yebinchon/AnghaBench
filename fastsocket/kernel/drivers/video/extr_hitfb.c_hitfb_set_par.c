
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bits_per_pixel; int xres; } ;
struct TYPE_3__ {int line_length; int ypanstep; int visual; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; } ;


 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int HD64461_LCDCLOR ;
 int HD64461_LDR3 ;
 unsigned short fb_readw (int ) ;
 int fb_writew (unsigned short,int ) ;

__attribute__((used)) static int hitfb_set_par(struct fb_info *info)
{
 unsigned short ldr3;

 switch (info->var.bits_per_pixel) {
 case 8:
  info->fix.line_length = info->var.xres;
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  info->fix.ypanstep = 16;
  break;
 case 16:
  info->fix.line_length = info->var.xres*2;
  info->fix.visual = FB_VISUAL_TRUECOLOR;
  info->fix.ypanstep = 8;
  break;
 }

 fb_writew(info->fix.line_length, HD64461_LCDCLOR);
 ldr3 = fb_readw(HD64461_LDR3);
 ldr3 &= ~15;
 ldr3 |= (info->var.bits_per_pixel == 8) ? 4 : 8;
 fb_writew(ldr3, HD64461_LDR3);
 return 0;
}
