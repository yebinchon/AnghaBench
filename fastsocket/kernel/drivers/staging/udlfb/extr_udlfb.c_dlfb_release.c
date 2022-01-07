
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int yres; int xres; } ;
struct fb_info {int screen_base; TYPE_1__ var; struct dlfb_data* par; } ;
struct dlfb_data {int dummy; } ;


 int image_blit (struct dlfb_data*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int dlfb_release(struct fb_info *info, int user)
{
 struct dlfb_data *dev_info = info->par;
 image_blit(dev_info, 0, 0, info->var.xres, info->var.yres,
     info->screen_base);
 return 0;
}
