
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* Blt; } ;
struct riva_par {TYPE_2__ riva; } ;
struct fb_info {int flags; struct riva_par* par; } ;
struct fb_copyarea {int sy; int sx; int dy; int dx; int height; int width; } ;
struct TYPE_3__ {int WidthHeight; int TopLeftDst; int TopLeftSrc; } ;


 int Blt ;
 int FBINFO_HWACCEL_DISABLED ;
 int NV_WR32 (int *,int ,int) ;
 int RIVA_FIFO_FREE (TYPE_2__,int ,int) ;
 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int mb () ;

__attribute__((used)) static void rivafb_copyarea(struct fb_info *info, const struct fb_copyarea *region)
{
 struct riva_par *par = info->par;

 if ((info->flags & FBINFO_HWACCEL_DISABLED)) {
  cfb_copyarea(info, region);
  return;
 }

 RIVA_FIFO_FREE(par->riva, Blt, 3);
 NV_WR32(&par->riva.Blt->TopLeftSrc, 0,
  (region->sy << 16) | region->sx);
 NV_WR32(&par->riva.Blt->TopLeftDst, 0,
  (region->dy << 16) | region->dx);
 mb();
 NV_WR32(&par->riva.Blt->WidthHeight, 0,
  (region->height << 16) | region->width);
 mb();
}
