
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_image {int depth; } ;


 int vga_imageblit_color (struct fb_info*,struct fb_image const*) ;
 int vga_imageblit_expand (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void vga16fb_imageblit(struct fb_info *info, const struct fb_image *image)
{
 if (image->depth == 1)
  vga_imageblit_expand(info, image);
 else
  vga_imageblit_color(info, image);
}
