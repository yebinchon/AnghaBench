
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; } ;
struct vc_data {TYPE_1__ vc_font; } ;
struct fb_info {TYPE_2__* fbops; } ;
struct fb_copyarea {int sx; int sy; int dx; int dy; int height; int width; } ;
struct TYPE_4__ {int (* fb_copyarea ) (struct fb_info*,struct fb_copyarea*) ;} ;


 int stub1 (struct fb_info*,struct fb_copyarea*) ;

__attribute__((used)) static void bit_bmove(struct vc_data *vc, struct fb_info *info, int sy,
        int sx, int dy, int dx, int height, int width)
{
 struct fb_copyarea area;

 area.sx = sx * vc->vc_font.width;
 area.sy = sy * vc->vc_font.height;
 area.dx = dx * vc->vc_font.width;
 area.dy = dy * vc->vc_font.height;
 area.height = height * vc->vc_font.height;
 area.width = width * vc->vc_font.width;

 info->fbops->fb_copyarea(info, &area);
}
