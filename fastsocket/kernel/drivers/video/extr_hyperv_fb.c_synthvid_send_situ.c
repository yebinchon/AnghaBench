
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct synthvid_situation_update {int dummy; } ;
struct synthvid_msg_hdr {int dummy; } ;
struct TYPE_9__ {int video_output_count; TYPE_3__* video_output; scalar_t__ user_ctx; } ;
struct TYPE_6__ {int size; int type; } ;
struct synthvid_msg {TYPE_4__ situ; TYPE_1__ vid_hdr; } ;
struct hv_device {int dummy; } ;
struct TYPE_10__ {int line_length; } ;
struct TYPE_7__ {int yres; int xres; int bits_per_pixel; } ;
struct fb_info {TYPE_5__ fix; TYPE_2__ var; } ;
struct TYPE_8__ {int active; int pitch_bytes; int height_pixels; int width_pixels; int depth_bits; scalar_t__ vram_offset; } ;


 int ENODEV ;
 int SYNTHVID_SITUATION_UPDATE ;
 struct fb_info* hv_get_drvdata (struct hv_device*) ;
 int memset (struct synthvid_msg*,int ,int) ;
 int synthvid_send (struct hv_device*,struct synthvid_msg*) ;

__attribute__((used)) static int synthvid_send_situ(struct hv_device *hdev)
{
 struct fb_info *info = hv_get_drvdata(hdev);
 struct synthvid_msg msg;

 if (!info)
  return -ENODEV;

 memset(&msg, 0, sizeof(struct synthvid_msg));

 msg.vid_hdr.type = SYNTHVID_SITUATION_UPDATE;
 msg.vid_hdr.size = sizeof(struct synthvid_msg_hdr) +
  sizeof(struct synthvid_situation_update);
 msg.situ.user_ctx = 0;
 msg.situ.video_output_count = 1;
 msg.situ.video_output[0].active = 1;
 msg.situ.video_output[0].vram_offset = 0;
 msg.situ.video_output[0].depth_bits = info->var.bits_per_pixel;
 msg.situ.video_output[0].width_pixels = info->var.xres;
 msg.situ.video_output[0].height_pixels = info->var.yres;
 msg.situ.video_output[0].pitch_bytes = info->fix.line_length;

 synthvid_send(hdev, &msg);

 return 0;
}
