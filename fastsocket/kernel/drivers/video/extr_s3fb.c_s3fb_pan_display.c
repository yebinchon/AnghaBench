
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int bits_per_pixel; int yoffset; int xres_virtual; int xoffset; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; } ;


 int s3_start_address_regs ;
 int svga_wcrt_multi (int ,unsigned int) ;

__attribute__((used)) static int s3fb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info) {

 unsigned int offset;


 if (var->bits_per_pixel == 0) {
  offset = (var->yoffset / 16) * (var->xres_virtual / 2) + (var->xoffset / 2);
  offset = offset >> 2;
 } else {
  offset = (var->yoffset * info->fix.line_length) +
    (var->xoffset * var->bits_per_pixel / 8);
  offset = offset >> 2;
 }


 svga_wcrt_multi(s3_start_address_regs, offset);

 return 0;
}
