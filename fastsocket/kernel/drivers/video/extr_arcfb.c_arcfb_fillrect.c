
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct arcfb_par* par; } ;
struct fb_fillrect {int height; int width; int dy; int dx; } ;
struct arcfb_par {int dummy; } ;


 int arcfb_lcd_update (struct arcfb_par*,int ,int ,int ,int ) ;
 int sys_fillrect (struct fb_info*,struct fb_fillrect const*) ;

__attribute__((used)) static void arcfb_fillrect(struct fb_info *info,
      const struct fb_fillrect *rect)
{
 struct arcfb_par *par = info->par;

 sys_fillrect(info, rect);


 arcfb_lcd_update(par, rect->dx, rect->dy, rect->width, rect->height);
}
