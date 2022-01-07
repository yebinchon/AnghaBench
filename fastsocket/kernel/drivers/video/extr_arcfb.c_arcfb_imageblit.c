
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct arcfb_par* par; } ;
struct fb_image {int height; int width; int dy; int dx; } ;
struct arcfb_par {int dummy; } ;


 int arcfb_lcd_update (struct arcfb_par*,int ,int ,int ,int ) ;
 int sys_imageblit (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void arcfb_imageblit(struct fb_info *info, const struct fb_image *image)
{
 struct arcfb_par *par = info->par;

 sys_imageblit(info, image);


 arcfb_lcd_update(par, image->dx, image->dy, image->width,
    image->height);
}
