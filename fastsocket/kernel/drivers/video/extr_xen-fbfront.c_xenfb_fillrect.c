
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenfb_info {int dummy; } ;
struct fb_info {struct xenfb_info* par; } ;
struct fb_fillrect {int height; int width; int dy; int dx; } ;


 int sys_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int xenfb_refresh (struct xenfb_info*,int ,int ,int ,int ) ;

__attribute__((used)) static void xenfb_fillrect(struct fb_info *p, const struct fb_fillrect *rect)
{
 struct xenfb_info *info = p->par;

 sys_fillrect(p, rect);
 xenfb_refresh(info, rect->dx, rect->dy, rect->width, rect->height);
}
