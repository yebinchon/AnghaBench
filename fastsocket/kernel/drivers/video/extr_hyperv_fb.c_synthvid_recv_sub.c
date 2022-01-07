
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ is_dirt_needed; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct synthvid_msg {TYPE_2__ feature_chg; TYPE_1__ vid_hdr; } ;
struct hvfb_par {int dwork; scalar_t__ update; scalar_t__ fb_ready; int wait; int init_buf; scalar_t__ recv_buf; } ;
struct hv_device {int dummy; } ;
struct fb_info {struct hvfb_par* par; } ;


 int HVFB_UPDATE_DELAY ;
 int MAX_VMBUS_PKT_SIZE ;
 scalar_t__ SYNTHVID_FEATURE_CHANGE ;
 scalar_t__ SYNTHVID_VERSION_RESPONSE ;
 scalar_t__ SYNTHVID_VRAM_LOCATION_ACK ;
 int complete (int *) ;
 struct fb_info* hv_get_drvdata (struct hv_device*) ;
 int memcpy (int ,struct synthvid_msg*,int ) ;
 int schedule_delayed_work (int *,int ) ;
 int synthvid_send_ptr (struct hv_device*) ;
 int synthvid_send_situ (struct hv_device*) ;

__attribute__((used)) static void synthvid_recv_sub(struct hv_device *hdev)
{
 struct fb_info *info = hv_get_drvdata(hdev);
 struct hvfb_par *par;
 struct synthvid_msg *msg;

 if (!info)
  return;

 par = info->par;
 msg = (struct synthvid_msg *)par->recv_buf;


 if (msg->vid_hdr.type == SYNTHVID_VERSION_RESPONSE ||
     msg->vid_hdr.type == SYNTHVID_VRAM_LOCATION_ACK) {
  memcpy(par->init_buf, msg, MAX_VMBUS_PKT_SIZE);
  complete(&par->wait);
  return;
 }


 if (msg->vid_hdr.type == SYNTHVID_FEATURE_CHANGE) {
  if (par->fb_ready) {
   synthvid_send_ptr(hdev);
   synthvid_send_situ(hdev);
  }

  par->update = msg->feature_chg.is_dirt_needed;
  if (par->update)
   schedule_delayed_work(&par->dwork, HVFB_UPDATE_DELAY);
 }
}
