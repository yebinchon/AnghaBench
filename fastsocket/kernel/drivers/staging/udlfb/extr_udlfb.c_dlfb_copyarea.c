
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct dlfb_data* par; } ;
struct fb_copyarea {int height; int width; int sy; int sx; int dy; int dx; } ;
struct dlfb_data {int dummy; } ;


 int copyarea (struct dlfb_data*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dlfb_copyarea(struct fb_info *info, const struct fb_copyarea *area)
{

 struct dlfb_data *dev = info->par;

 copyarea(dev, area->dx, area->dy, area->sx, area->sy, area->width,
   area->height);



}
