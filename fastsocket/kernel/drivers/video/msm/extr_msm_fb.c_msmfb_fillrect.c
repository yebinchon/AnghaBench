
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_fillrect {scalar_t__ height; scalar_t__ dy; scalar_t__ width; scalar_t__ dx; } ;


 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int msmfb_update (struct fb_info*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void msmfb_fillrect(struct fb_info *p, const struct fb_fillrect *rect)
{
 cfb_fillrect(p, rect);
 msmfb_update(p, rect->dx, rect->dy, rect->dx + rect->width,
       rect->dy + rect->height);
}
