
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pm3_par {int video; int base; } ;
struct TYPE_4__ {int xres; unsigned int bits_per_pixel; int const yoffset; int sync; int vmode; int activate; int xres_virtual; scalar_t__ xoffset; } ;
struct TYPE_3__ {int line_length; int visual; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct pm3_par* par; } ;


 int DPRINTK (char*) ;
 int FB_ACTIVATE_MASK ;
 int FB_ACTIVATE_NOW ;
 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_MASK ;
 int PM3RD_CursorMode ;
 int PM3VideoControl_ENABLE ;
 int PM3VideoControl_HSYNC_ACTIVE_HIGH ;
 int PM3VideoControl_HSYNC_ACTIVE_LOW ;
 int PM3VideoControl_LINE_DOUBLE_ON ;
 int PM3VideoControl_PIXELSIZE_16BIT ;
 int PM3VideoControl_PIXELSIZE_32BIT ;
 int PM3VideoControl_PIXELSIZE_8BIT ;
 int PM3VideoControl_VSYNC_ACTIVE_HIGH ;
 int PM3VideoControl_VSYNC_ACTIVE_LOW ;
 int PM3_WRITE_DAC_REG (struct pm3_par*,int ,int ) ;
 int pm3fb_clear_colormap (struct pm3_par*,int ,int ,int ) ;
 int pm3fb_init_engine (struct fb_info*) ;
 int pm3fb_shift_bpp (unsigned int const,scalar_t__) ;
 int pm3fb_write_mode (struct fb_info*) ;

__attribute__((used)) static int pm3fb_set_par(struct fb_info *info)
{
 struct pm3_par *par = info->par;
 const u32 xres = (info->var.xres + 31) & ~31;
 const unsigned bpp = info->var.bits_per_pixel;

 par->base = pm3fb_shift_bpp(bpp, (info->var.yoffset * xres)
     + info->var.xoffset);
 par->video = 0;

 if (info->var.sync & FB_SYNC_HOR_HIGH_ACT)
  par->video |= PM3VideoControl_HSYNC_ACTIVE_HIGH;
 else
  par->video |= PM3VideoControl_HSYNC_ACTIVE_LOW;

 if (info->var.sync & FB_SYNC_VERT_HIGH_ACT)
  par->video |= PM3VideoControl_VSYNC_ACTIVE_HIGH;
 else
  par->video |= PM3VideoControl_VSYNC_ACTIVE_LOW;

 if ((info->var.vmode & FB_VMODE_MASK) == FB_VMODE_DOUBLE)
  par->video |= PM3VideoControl_LINE_DOUBLE_ON;

 if ((info->var.activate & FB_ACTIVATE_MASK) == FB_ACTIVATE_NOW)
  par->video |= PM3VideoControl_ENABLE;
 else
  DPRINTK("PM3Video disabled\n");

 switch (bpp) {
 case 8:
  par->video |= PM3VideoControl_PIXELSIZE_8BIT;
  break;
 case 16:
  par->video |= PM3VideoControl_PIXELSIZE_16BIT;
  break;
 case 32:
  par->video |= PM3VideoControl_PIXELSIZE_32BIT;
  break;
 default:
  DPRINTK("Unsupported depth\n");
  break;
 }

 info->fix.visual =
  (bpp == 8) ? FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
 info->fix.line_length = ((info->var.xres_virtual + 7) >> 3) * bpp;


 pm3fb_clear_colormap(par, 0, 0, 0);
 PM3_WRITE_DAC_REG(par, PM3RD_CursorMode, 0);
 pm3fb_init_engine(info);
 pm3fb_write_mode(info);
 return 0;
}
