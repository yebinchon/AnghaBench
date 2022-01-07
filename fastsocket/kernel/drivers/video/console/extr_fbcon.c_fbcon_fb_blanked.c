
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_mode; } ;
struct fbcon_ops {size_t currcon; int blank_state; } ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;
struct TYPE_2__ {struct vc_data* d; } ;


 scalar_t__ CON_IS_VISIBLE (struct vc_data*) ;
 scalar_t__ KD_TEXT ;
 size_t* con2fb_map ;
 int do_blank_screen (int ) ;
 int do_unblank_screen (int ) ;
 struct fb_info** registered_fb ;
 TYPE_1__* vc_cons ;

__attribute__((used)) static void fbcon_fb_blanked(struct fb_info *info, int blank)
{
 struct fbcon_ops *ops = info->fbcon_par;
 struct vc_data *vc;

 if (!ops || ops->currcon < 0)
  return;

 vc = vc_cons[ops->currcon].d;
 if (vc->vc_mode != KD_TEXT ||
   registered_fb[con2fb_map[ops->currcon]] != info)
  return;

 if (CON_IS_VISIBLE(vc)) {
  if (blank)
   do_blank_screen(0);
  else
   do_unblank_screen(0);
 }
 ops->blank_state = blank;
}
