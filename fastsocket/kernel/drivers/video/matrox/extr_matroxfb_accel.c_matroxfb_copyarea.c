
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xres_virtual; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct matrox_fb_info {TYPE_2__ fbcon; } ;
struct fb_info {int dummy; } ;
struct fb_copyarea {int width; int height; int dx; int dy; int sx; int sy; } ;


 struct matrox_fb_info* info2minfo (struct fb_info*) ;
 int matrox_accel_bmove (struct matrox_fb_info*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void matroxfb_copyarea(struct fb_info* info, const struct fb_copyarea* area) {
 struct matrox_fb_info *minfo = info2minfo(info);

 matrox_accel_bmove(minfo, minfo->fbcon.var.xres_virtual, area->sy, area->sx, area->dy, area->dx, area->height, area->width);
}
