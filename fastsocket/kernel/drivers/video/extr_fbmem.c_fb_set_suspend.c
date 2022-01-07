
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int state; } ;
struct fb_event {struct fb_info* info; } ;


 int FBINFO_STATE_RUNNING ;
 int FBINFO_STATE_SUSPENDED ;
 int FB_EVENT_RESUME ;
 int FB_EVENT_SUSPEND ;
 int fb_notifier_call_chain (int ,struct fb_event*) ;
 int lock_fb_info (struct fb_info*) ;
 int unlock_fb_info (struct fb_info*) ;

void fb_set_suspend(struct fb_info *info, int state)
{
 struct fb_event event;

 if (!lock_fb_info(info))
  return;
 event.info = info;
 if (state) {
  fb_notifier_call_chain(FB_EVENT_SUSPEND, &event);
  info->state = FBINFO_STATE_SUSPENDED;
 } else {
  info->state = FBINFO_STATE_RUNNING;
  fb_notifier_call_chain(FB_EVENT_RESUME, &event);
 }
 unlock_fb_info(info);
}
