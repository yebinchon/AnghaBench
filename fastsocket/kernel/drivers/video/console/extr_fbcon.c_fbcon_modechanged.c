
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; } ;
struct vc_data {scalar_t__ vc_mode; size_t vc_num; TYPE_1__ vc_font; } ;
struct TYPE_6__ {scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct fbcon_ops {size_t currcon; int (* update_start ) (struct fb_info*) ;TYPE_2__ var; int rotate; } ;
struct TYPE_8__ {int xres; int yres; } ;
struct fb_info {TYPE_4__ var; struct fbcon_ops* fbcon_par; } ;
struct display {scalar_t__ yscroll; } ;
struct TYPE_7__ {struct vc_data* d; } ;


 scalar_t__ CON_IS_VISIBLE (struct vc_data*) ;
 int FBCON_SWAP (int ,int ,int ) ;
 scalar_t__ KD_TEXT ;
 int color_table ;
 size_t* con2fb_map ;
 struct display* fb_display ;
 int fbcon_is_inactive (struct vc_data*,struct fb_info*) ;
 int fbcon_set_palette (struct vc_data*,int ) ;
 int fbcon_update_softback (struct vc_data*) ;
 struct fb_info** registered_fb ;
 scalar_t__ scrollback_current ;
 scalar_t__ scrollback_max ;
 int set_blitting_type (struct vc_data*,struct fb_info*) ;
 scalar_t__ softback_buf ;
 int stub1 (struct fb_info*) ;
 int update_screen (struct vc_data*) ;
 int updatescrollmode (struct display*,struct fb_info*,struct vc_data*) ;
 int var_to_display (struct display*,TYPE_4__*,struct fb_info*) ;
 TYPE_3__* vc_cons ;
 int vc_resize (struct vc_data*,int,int) ;

__attribute__((used)) static void fbcon_modechanged(struct fb_info *info)
{
 struct fbcon_ops *ops = info->fbcon_par;
 struct vc_data *vc;
 struct display *p;
 int rows, cols;

 if (!ops || ops->currcon < 0)
  return;
 vc = vc_cons[ops->currcon].d;
 if (vc->vc_mode != KD_TEXT ||
     registered_fb[con2fb_map[ops->currcon]] != info)
  return;

 p = &fb_display[vc->vc_num];
 set_blitting_type(vc, info);

 if (CON_IS_VISIBLE(vc)) {
  var_to_display(p, &info->var, info);
  cols = FBCON_SWAP(ops->rotate, info->var.xres, info->var.yres);
  rows = FBCON_SWAP(ops->rotate, info->var.yres, info->var.xres);
  cols /= vc->vc_font.width;
  rows /= vc->vc_font.height;
  vc_resize(vc, cols, rows);
  updatescrollmode(p, info, vc);
  scrollback_max = 0;
  scrollback_current = 0;

  if (!fbcon_is_inactive(vc, info)) {
      ops->var.xoffset = ops->var.yoffset = p->yscroll = 0;
      ops->update_start(info);
  }

  fbcon_set_palette(vc, color_table);
  update_screen(vc);
  if (softback_buf)
   fbcon_update_softback(vc);
 }
}
