
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned short vc_video_erase_char; int vc_cols; int vc_rows; scalar_t__ vc_hi_font_mask; } ;
struct fb_info {int dummy; } ;
struct fb_event {int* data; struct fb_info* info; } ;


 int FB_EVENT_CONBLANK ;
 int fb_notifier_call_chain (int ,struct fb_event*) ;
 int fbcon_clear (struct vc_data*,int ,int ,int ,int ) ;
 int lock_fb_info (struct fb_info*) ;
 int unlock_fb_info (struct fb_info*) ;

__attribute__((used)) static void fbcon_generic_blank(struct vc_data *vc, struct fb_info *info,
    int blank)
{
 struct fb_event event;

 if (blank) {
  unsigned short charmask = vc->vc_hi_font_mask ?
   0x1ff : 0xff;
  unsigned short oldc;

  oldc = vc->vc_video_erase_char;
  vc->vc_video_erase_char &= charmask;
  fbcon_clear(vc, 0, 0, vc->vc_rows, vc->vc_cols);
  vc->vc_video_erase_char = oldc;
 }


 if (!lock_fb_info(info))
  return;
 event.info = info;
 event.data = &blank;
 fb_notifier_call_chain(FB_EVENT_CONBLANK, &event);
 unlock_fb_info(info);
}
