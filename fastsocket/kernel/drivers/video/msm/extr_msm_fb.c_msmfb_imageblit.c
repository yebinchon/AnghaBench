
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_image {scalar_t__ height; scalar_t__ dy; scalar_t__ width; scalar_t__ dx; } ;


 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;
 int msmfb_update (struct fb_info*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void msmfb_imageblit(struct fb_info *p, const struct fb_image *image)
{
 cfb_imageblit(p, image);
 msmfb_update(p, image->dx, image->dy, image->dx + image->width,
       image->dy + image->height);
}
