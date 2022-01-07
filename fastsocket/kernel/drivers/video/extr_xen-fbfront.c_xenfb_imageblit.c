
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenfb_info {int dummy; } ;
struct fb_info {struct xenfb_info* par; } ;
struct fb_image {int height; int width; int dy; int dx; } ;


 int sys_imageblit (struct fb_info*,struct fb_image const*) ;
 int xenfb_refresh (struct xenfb_info*,int ,int ,int ,int ) ;

__attribute__((used)) static void xenfb_imageblit(struct fb_info *p, const struct fb_image *image)
{
 struct xenfb_info *info = p->par;

 sys_imageblit(p, image);
 xenfb_refresh(info, image->dx, image->dy, image->width, image->height);
}
