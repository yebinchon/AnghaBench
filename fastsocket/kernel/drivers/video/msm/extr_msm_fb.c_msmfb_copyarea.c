
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_copyarea {scalar_t__ height; scalar_t__ dy; scalar_t__ width; scalar_t__ dx; } ;


 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int msmfb_update (struct fb_info*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void msmfb_copyarea(struct fb_info *p, const struct fb_copyarea *area)
{
 cfb_copyarea(p, area);
 msmfb_update(p, area->dx, area->dy, area->dx + area->width,
       area->dy + area->height);
}
