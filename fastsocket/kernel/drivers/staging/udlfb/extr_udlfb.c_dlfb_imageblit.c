
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int screen_base; struct dlfb_data* par; } ;
struct fb_image {int height; int width; int dy; int dx; } ;
struct dlfb_data {int dummy; } ;


 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;
 int image_blit (struct dlfb_data*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dlfb_imageblit(struct fb_info *info, const struct fb_image *image)
{

 int ret;
 struct dlfb_data *dev = info->par;

 cfb_imageblit(info, image);
 ret =
     image_blit(dev, image->dx, image->dy, image->width, image->height,
         info->screen_base);

}
