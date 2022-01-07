
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; } ;
struct fb_image {int depth; int width; int dx; } ;


 scalar_t__ FB_TYPE_INTERLEAVED_PLANES ;
 int arkfb_cfb4_imageblit (struct fb_info*,struct fb_image const*) ;
 int arkfb_iplan_imageblit (struct fb_info*,struct fb_image const*) ;
 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void arkfb_imageblit(struct fb_info *info, const struct fb_image *image)
{
 if ((info->var.bits_per_pixel == 4) && (image->depth == 1)
     && ((image->width % 8) == 0) && ((image->dx % 8) == 0)) {
  if (info->fix.type == FB_TYPE_INTERLEAVED_PLANES)
   arkfb_iplan_imageblit(info, image);
  else
   arkfb_cfb4_imageblit(info, image);
 } else
  cfb_imageblit(info, image);
}
