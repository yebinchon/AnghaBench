
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {size_t vc_num; } ;
struct fbcon_ops {int flags; } ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;
struct display {int dummy; } ;


 scalar_t__ CON_IS_VISIBLE (struct vc_data*) ;
 int FBCON_FLAGS_INIT ;
 int* con2fb_map ;
 int con_is_bound (int *) ;
 int fb_con ;
 struct display* fb_display ;
 int fbcon_del_cursor_timer (struct fb_info*) ;
 int fbcon_exit () ;
 int fbcon_free_font (struct display*) ;
 struct fb_info** registered_fb ;

__attribute__((used)) static void fbcon_deinit(struct vc_data *vc)
{
 struct display *p = &fb_display[vc->vc_num];
 struct fb_info *info;
 struct fbcon_ops *ops;
 int idx;

 fbcon_free_font(p);
 idx = con2fb_map[vc->vc_num];

 if (idx == -1)
  goto finished;

 info = registered_fb[idx];

 if (!info)
  goto finished;

 ops = info->fbcon_par;

 if (!ops)
  goto finished;

 if (CON_IS_VISIBLE(vc))
  fbcon_del_cursor_timer(info);

 ops->flags &= ~FBCON_FLAGS_INIT;
finished:

 if (!con_is_bound(&fb_con))
  fbcon_exit();

 return;
}
