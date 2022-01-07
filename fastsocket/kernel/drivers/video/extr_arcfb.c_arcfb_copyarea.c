
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct arcfb_par* par; } ;
struct fb_copyarea {int height; int width; int dy; int dx; } ;
struct arcfb_par {int dummy; } ;


 int arcfb_lcd_update (struct arcfb_par*,int ,int ,int ,int ) ;
 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;

__attribute__((used)) static void arcfb_copyarea(struct fb_info *info,
      const struct fb_copyarea *area)
{
 struct arcfb_par *par = info->par;

 sys_copyarea(info, area);


 arcfb_lcd_update(par, area->dx, area->dy, area->width, area->height);
}
