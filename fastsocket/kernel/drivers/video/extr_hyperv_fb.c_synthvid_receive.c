
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct synthvid_msg {TYPE_1__ pipe_hdr; } ;
struct hvfb_par {scalar_t__ recv_buf; } ;
struct hv_device {int channel; } ;
struct fb_info {struct hvfb_par* par; } ;


 int MAX_VMBUS_PKT_SIZE ;
 scalar_t__ PIPE_MSG_DATA ;
 struct fb_info* hv_get_drvdata (struct hv_device*) ;
 int synthvid_recv_sub (struct hv_device*) ;
 int vmbus_recvpacket (int ,struct synthvid_msg*,int ,scalar_t__*,int *) ;

__attribute__((used)) static void synthvid_receive(void *ctx)
{
 struct hv_device *hdev = ctx;
 struct fb_info *info = hv_get_drvdata(hdev);
 struct hvfb_par *par;
 struct synthvid_msg *recv_buf;
 u32 bytes_recvd;
 u64 req_id;
 int ret;

 if (!info)
  return;

 par = info->par;
 recv_buf = (struct synthvid_msg *)par->recv_buf;

 do {
  ret = vmbus_recvpacket(hdev->channel, recv_buf,
           MAX_VMBUS_PKT_SIZE,
           &bytes_recvd, &req_id);
  if (bytes_recvd > 0 &&
      recv_buf->pipe_hdr.type == PIPE_MSG_DATA)
   synthvid_recv_sub(hdev);
 } while (bytes_recvd > 0 && ret == 0);
}
