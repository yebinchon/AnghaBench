
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct dlfb_data* par; } ;
struct fb_fillrect {int height; int width; int dy; int dx; int color; } ;
struct dlfb_data {int dummy; } ;


 int draw_rect (struct dlfb_data*,int ,int ,int ,int ,unsigned char,unsigned char,unsigned char) ;
 int memcpy (unsigned char*,int *,int) ;

__attribute__((used)) static void dlfb_fillrect(struct fb_info *info,
     const struct fb_fillrect *region)
{

 unsigned char red, green, blue;
 struct dlfb_data *dev = info->par;

 memcpy(&red, &region->color, 1);
 memcpy(&green, &region->color + 1, 1);
 memcpy(&blue, &region->color + 2, 1);
 draw_rect(dev, region->dx, region->dy, region->width, region->height,
    red, green, blue);


}
