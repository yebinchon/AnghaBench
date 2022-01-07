
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_lcd {TYPE_1__* us; struct plat_lcd_data* pdata; } ;
struct plat_lcd_data {int (* match_fb ) (struct plat_lcd_data*,struct fb_info*) ;} ;
struct lcd_device {int dummy; } ;
struct fb_info {scalar_t__ device; } ;
struct TYPE_2__ {scalar_t__ parent; } ;


 int stub1 (struct plat_lcd_data*,struct fb_info*) ;
 struct platform_lcd* to_our_lcd (struct lcd_device*) ;

__attribute__((used)) static int platform_lcd_match(struct lcd_device *lcd, struct fb_info *info)
{
 struct platform_lcd *plcd = to_our_lcd(lcd);
 struct plat_lcd_data *pdata = plcd->pdata;

 if (pdata->match_fb)
  return pdata->match_fb(pdata, info);

 return plcd->us->parent == info->device;
}
