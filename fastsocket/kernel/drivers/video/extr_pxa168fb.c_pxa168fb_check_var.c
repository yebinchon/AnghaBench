
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa168fb_info {int pix_fmt; } ;
struct fb_var_screeninfo {int xoffset; int xres; int xres_virtual; int yoffset; int yres; int yres_virtual; int right_margin; int hsync_len; int left_margin; int lower_margin; int vsync_len; int upper_margin; int bits_per_pixel; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; struct pxa168fb_info* par; } ;


 int EINVAL ;
 int determine_best_pix_fmt (struct fb_var_screeninfo*) ;
 int set_pix_fmt (struct fb_var_screeninfo*,int) ;

__attribute__((used)) static int pxa168fb_check_var(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 struct pxa168fb_info *fbi = info->par;
 int pix_fmt;




 pix_fmt = determine_best_pix_fmt(var);
 if (pix_fmt < 0)
  return pix_fmt;
 set_pix_fmt(var, pix_fmt);
 fbi->pix_fmt = pix_fmt;




 if (var->xoffset + var->xres > var->xres_virtual)
  return -EINVAL;
 if (var->yoffset + var->yres > var->yres_virtual)
  return -EINVAL;
 if (var->xres + var->right_margin +
     var->hsync_len + var->left_margin > 2048)
  return -EINVAL;
 if (var->yres + var->lower_margin +
     var->vsync_len + var->upper_margin > 2048)
  return -EINVAL;




 if (var->xres_virtual * var->yres_virtual *
     (var->bits_per_pixel >> 3) > info->fix.smem_len)
  return -EINVAL;

 return 0;
}
