
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct fb_image {int depth; } ;


 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;
 int tgafb_clut_imageblit (struct fb_info*,struct fb_image const*) ;
 int tgafb_mono_imageblit (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void
tgafb_imageblit(struct fb_info *info, const struct fb_image *image)
{
 unsigned int is8bpp = info->var.bits_per_pixel == 8;


 if (image->depth == 1) {
  tgafb_mono_imageblit(info, image);
  return;
 }





 if (image->depth == info->var.bits_per_pixel) {
  cfb_imageblit(info, image);
  return;
 }


 if (!is8bpp && image->depth == 8) {
  tgafb_clut_imageblit(info, image);
  return;
 }


}
