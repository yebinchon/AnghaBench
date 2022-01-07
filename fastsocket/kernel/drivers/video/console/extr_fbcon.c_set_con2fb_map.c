
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {struct vc_data* d; } ;


 int EINVAL ;
 scalar_t__ FBCON_LOGO_DONTSHOW ;
 int acquire_console_sem () ;
 int con2fb_acquire_newinfo (struct vc_data*,struct fb_info*,int,int) ;
 int con2fb_init_display (struct vc_data*,struct fb_info*,int,int) ;
 int* con2fb_map ;
 int* con2fb_map_boot ;
 int con2fb_release_oldinfo (struct vc_data*,struct fb_info*,struct fb_info*,int,int,int) ;
 int con_is_bound (int *) ;
 int fb_con ;
 int fbcon_add_cursor_timer (struct fb_info*) ;
 int fbcon_takeover (int ) ;
 scalar_t__ fg_console ;
 int info_idx ;
 scalar_t__ logo_shown ;
 struct fb_info** registered_fb ;
 int release_console_sem () ;
 int search_fb_in_map (int) ;
 int search_for_mapped_con () ;
 TYPE_1__* vc_cons ;

__attribute__((used)) static int set_con2fb_map(int unit, int newidx, int user)
{
 struct vc_data *vc = vc_cons[unit].d;
 int oldidx = con2fb_map[unit];
 struct fb_info *info = registered_fb[newidx];
 struct fb_info *oldinfo = ((void*)0);
  int found, err = 0;

 if (oldidx == newidx)
  return 0;

 if (!info)
  return -EINVAL;

 if (!search_for_mapped_con() || !con_is_bound(&fb_con)) {
  info_idx = newidx;
  return fbcon_takeover(0);
 }

 if (oldidx != -1)
  oldinfo = registered_fb[oldidx];

 found = search_fb_in_map(newidx);

 acquire_console_sem();
 con2fb_map[unit] = newidx;
 if (!err && !found)
   err = con2fb_acquire_newinfo(vc, info, unit, oldidx);






  if (!err && oldinfo && !search_fb_in_map(oldidx))
   err = con2fb_release_oldinfo(vc, oldinfo, info, unit, oldidx,
           found);

  if (!err) {
   int show_logo = (fg_console == 0 && !user &&
      logo_shown != FBCON_LOGO_DONTSHOW);

   if (!found)
    fbcon_add_cursor_timer(info);
   con2fb_map_boot[unit] = newidx;
   con2fb_init_display(vc, info, unit, show_logo);
 }

 if (!search_fb_in_map(info_idx))
  info_idx = newidx;

 release_console_sem();
  return err;
}
