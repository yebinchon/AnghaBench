
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mobile_lcdc_chan {int new_pan_offset; int pan_offset; int lcdc; } ;
struct fb_var_screeninfo {int xoffset; int yoffset; } ;
struct TYPE_4__ {int xoffset; int yoffset; int bits_per_pixel; } ;
struct TYPE_3__ {int line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct sh_mobile_lcdc_chan* par; } ;


 unsigned long LDINTR_VEE ;
 int _LDINTR ;
 unsigned long lcdc_read (int ,int ) ;
 int lcdc_write (int ,int ,unsigned long) ;
 int sh_mobile_lcdc_deferred_io_touch (struct fb_info*) ;

__attribute__((used)) static int sh_mobile_fb_pan_display(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 struct sh_mobile_lcdc_chan *ch = info->par;

 if (info->var.xoffset == var->xoffset &&
     info->var.yoffset == var->yoffset)
  return 0;

 ch->new_pan_offset = (var->yoffset * info->fix.line_length) +
  (var->xoffset * (info->var.bits_per_pixel / 8));

 if (ch->new_pan_offset != ch->pan_offset) {
  unsigned long ldintr;
  ldintr = lcdc_read(ch->lcdc, _LDINTR);
  ldintr |= LDINTR_VEE;
  lcdc_write(ch->lcdc, _LDINTR, ldintr);
  sh_mobile_lcdc_deferred_io_touch(info);
 }

 return 0;
}
