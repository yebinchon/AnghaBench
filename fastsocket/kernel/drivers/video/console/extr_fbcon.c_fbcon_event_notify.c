
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct fb_videomode {int console; int framebuffer; } ;
struct fb_info {int node; } ;
struct fb_event {struct fb_videomode* data; struct fb_info* info; } ;
struct fb_con2fbmap {int console; int framebuffer; } ;
struct fb_blit_caps {int console; int framebuffer; } ;
 int * con2fb_map ;
 int fbcon_fb_blanked (struct fb_info*,int) ;
 int fbcon_fb_registered (struct fb_info*) ;
 int fbcon_fb_unbind (int) ;
 int fbcon_fb_unregistered (struct fb_info*) ;
 int fbcon_get_requirement (struct fb_info*,struct fb_videomode*) ;
 scalar_t__ fbcon_has_exited ;
 int fbcon_mode_deleted (struct fb_info*,struct fb_videomode*) ;
 int fbcon_modechanged (struct fb_info*) ;
 int fbcon_new_modelist (struct fb_info*) ;
 int fbcon_remap_all (int) ;
 int fbcon_resumed (struct fb_info*) ;
 int fbcon_set_all_vcs (struct fb_info*) ;
 int fbcon_suspended (struct fb_info*) ;
 int set_con2fb_map (int ,int ,int) ;

__attribute__((used)) static int fbcon_event_notify(struct notifier_block *self,
         unsigned long action, void *data)
{
 struct fb_event *event = data;
 struct fb_info *info = event->info;
 struct fb_videomode *mode;
 struct fb_con2fbmap *con2fb;
 struct fb_blit_caps *caps;
 int idx, ret = 0;





 if (fbcon_has_exited && !(action == 140 ||
      action == 138))
  goto done;

 switch(action) {
 case 128:
  fbcon_suspended(info);
  break;
 case 130:
  fbcon_resumed(info);
  break;
 case 135:
  fbcon_modechanged(info);
  break;
 case 134:
  fbcon_set_all_vcs(info);
  break;
 case 133:
  mode = event->data;
  ret = fbcon_mode_deleted(info, mode);
  break;
 case 139:
  idx = info->node;
  ret = fbcon_fb_unbind(idx);
  break;
 case 140:
  ret = fbcon_fb_registered(info);
  break;
 case 138:
  ret = fbcon_fb_unregistered(info);
  break;
 case 129:
  con2fb = event->data;
  ret = set_con2fb_map(con2fb->console - 1,
         con2fb->framebuffer, 1);
  break;
 case 137:
  con2fb = event->data;
  con2fb->framebuffer = con2fb_map[con2fb->console - 1];
  break;
 case 141:
  fbcon_fb_blanked(info, *(int *)event->data);
  break;
 case 132:
  fbcon_new_modelist(info);
  break;
 case 136:
  caps = event->data;
  fbcon_get_requirement(info, caps);
  break;
 case 131:
  idx = info->node;
  fbcon_remap_all(idx);
  break;
 }
done:
 return ret;
}
