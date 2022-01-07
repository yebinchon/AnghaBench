
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {int dummy; } ;
struct fb_info {scalar_t__ state; struct radeonfb_info* par; } ;
struct fb_image {int dummy; } ;


 scalar_t__ FBINFO_STATE_RUNNING ;
 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;
 int radeon_engine_idle () ;

void radeonfb_imageblit(struct fb_info *info, const struct fb_image *image)
{
 struct radeonfb_info *rinfo = info->par;

 if (info->state != FBINFO_STATE_RUNNING)
  return;
 radeon_engine_idle();

 cfb_imageblit(info, image);
}
