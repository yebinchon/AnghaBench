
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_5__ {int height; int width; } ;
struct vc_data {TYPE_2__ vc_font; scalar_t__ vc_hi_font_mask; } ;
struct fbcon_ops {TYPE_1__* p; } ;
struct fb_info {TYPE_3__* fbops; struct fbcon_ops* fbcon_par; } ;
struct fb_fillrect {int width; int height; int rop; void* dx; void* dy; int color; } ;
struct TYPE_6__ {int (* fb_fillrect ) (struct fb_info*,struct fb_fillrect*) ;} ;
struct TYPE_4__ {int scrollmode; } ;


 void* GETVXRES (int ,struct fb_info*) ;
 void* GETVYRES (int ,struct fb_info*) ;
 int ROP_COPY ;
 int attr_bgcol_ec (int,struct vc_data*,struct fb_info*) ;
 int stub1 (struct fb_info*,struct fb_fillrect*) ;

__attribute__((used)) static void ud_clear(struct vc_data *vc, struct fb_info *info, int sy,
       int sx, int height, int width)
{
 struct fbcon_ops *ops = info->fbcon_par;
 struct fb_fillrect region;
 int bgshift = (vc->vc_hi_font_mask) ? 13 : 12;
 u32 vyres = GETVYRES(ops->p->scrollmode, info);
 u32 vxres = GETVXRES(ops->p->scrollmode, info);

 region.color = attr_bgcol_ec(bgshift,vc,info);
 region.dy = vyres - ((sy + height) * vc->vc_font.height);
 region.dx = vxres - ((sx + width) * vc->vc_font.width);
 region.width = width * vc->vc_font.width;
 region.height = height * vc->vc_font.height;
 region.rop = ROP_COPY;

 info->fbops->fb_fillrect(info, &region);
}
