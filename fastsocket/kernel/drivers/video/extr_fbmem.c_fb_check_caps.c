
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {TYPE_1__* fbops; } ;
struct fb_event {struct fb_blit_caps* data; struct fb_info* info; } ;
struct fb_blit_caps {int flags; int x; int y; scalar_t__ len; } ;
typedef int fbcaps ;
typedef int caps ;
struct TYPE_2__ {int (* fb_get_caps ) (struct fb_info*,struct fb_blit_caps*,struct fb_var_screeninfo*) ;} ;


 int EINVAL ;
 int FB_ACTIVATE_ALL ;
 int FB_EVENT_GET_REQ ;
 int fb_notifier_call_chain (int ,struct fb_event*) ;
 int memset (struct fb_blit_caps*,int ,int) ;
 int stub1 (struct fb_info*,struct fb_blit_caps*,struct fb_var_screeninfo*) ;

__attribute__((used)) static int fb_check_caps(struct fb_info *info, struct fb_var_screeninfo *var,
    u32 activate)
{
 struct fb_event event;
 struct fb_blit_caps caps, fbcaps;
 int err = 0;

 memset(&caps, 0, sizeof(caps));
 memset(&fbcaps, 0, sizeof(fbcaps));
 caps.flags = (activate & FB_ACTIVATE_ALL) ? 1 : 0;
 event.info = info;
 event.data = &caps;
 fb_notifier_call_chain(FB_EVENT_GET_REQ, &event);
 info->fbops->fb_get_caps(info, &fbcaps, var);

 if (((fbcaps.x ^ caps.x) & caps.x) ||
     ((fbcaps.y ^ caps.y) & caps.y) ||
     (fbcaps.len < caps.len))
  err = -EINVAL;

 return err;
}
