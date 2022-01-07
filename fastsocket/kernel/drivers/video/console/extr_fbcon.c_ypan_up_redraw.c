
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; } ;
struct vc_data {size_t vc_num; int vc_rows; TYPE_1__ vc_font; } ;
struct TYPE_4__ {int yoffset; int vmode; scalar_t__ xoffset; } ;
struct fbcon_ops {int (* update_start ) (struct fb_info*) ;TYPE_2__ var; } ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;
struct display {int yscroll; int vrows; } ;


 int FB_VMODE_YWRAP ;
 size_t* con2fb_map ;
 struct display* fb_display ;
 int fbcon_clear_margins (struct vc_data*,int) ;
 int fbcon_redraw_move (struct vc_data*,struct display*,int,int,int) ;
 struct fb_info** registered_fb ;
 scalar_t__ scrollback_current ;
 scalar_t__ scrollback_max ;
 scalar_t__ scrollback_phys_max ;
 int stub1 (struct fb_info*) ;

__attribute__((used)) static __inline__ void ypan_up_redraw(struct vc_data *vc, int t, int count)
{
 struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
 struct fbcon_ops *ops = info->fbcon_par;
 struct display *p = &fb_display[vc->vc_num];

 p->yscroll += count;

 if (p->yscroll > p->vrows - vc->vc_rows) {
  p->yscroll -= p->vrows - vc->vc_rows;
  fbcon_redraw_move(vc, p, t + count, vc->vc_rows - count, t);
 }

 ops->var.xoffset = 0;
 ops->var.yoffset = p->yscroll * vc->vc_font.height;
 ops->var.vmode &= ~FB_VMODE_YWRAP;
 ops->update_start(info);
 fbcon_clear_margins(vc, 1);
 scrollback_max += count;
 if (scrollback_max > scrollback_phys_max)
  scrollback_max = scrollback_phys_max;
 scrollback_current = 0;
}
