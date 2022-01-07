
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct synthvid_version_req {int dummy; } ;
struct synthvid_msg_hdr {int dummy; } ;
struct TYPE_6__ {int is_accepted; } ;
struct TYPE_5__ {void* version; } ;
struct TYPE_4__ {int size; int type; } ;
struct synthvid_msg {TYPE_3__ ver_resp; TYPE_2__ ver_req; TYPE_1__ vid_hdr; } ;
struct hvfb_par {void* synthvid_version; int wait; scalar_t__ init_buf; } ;
struct hv_device {int dummy; } ;
struct fb_info {struct hvfb_par* par; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int SYNTHVID_VERSION_REQUEST ;
 int VSP_TIMEOUT ;
 struct fb_info* hv_get_drvdata (struct hv_device*) ;
 int memset (struct synthvid_msg*,int ,int) ;
 int pr_err (char*) ;
 int synthvid_send (struct hv_device*,struct synthvid_msg*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int synthvid_negotiate_ver(struct hv_device *hdev, u32 ver)
{
 struct fb_info *info = hv_get_drvdata(hdev);
 struct hvfb_par *par = info->par;
 struct synthvid_msg *msg = (struct synthvid_msg *)par->init_buf;
 int t, ret = 0;

 memset(msg, 0, sizeof(struct synthvid_msg));
 msg->vid_hdr.type = SYNTHVID_VERSION_REQUEST;
 msg->vid_hdr.size = sizeof(struct synthvid_msg_hdr) +
  sizeof(struct synthvid_version_req);
 msg->ver_req.version = ver;
 synthvid_send(hdev, msg);

 t = wait_for_completion_timeout(&par->wait, VSP_TIMEOUT);
 if (!t) {
  pr_err("Time out on waiting version response\n");
  ret = -ETIMEDOUT;
  goto out;
 }
 if (!msg->ver_resp.is_accepted) {
  ret = -ENODEV;
  goto out;
 }

 par->synthvid_version = ver;

out:
 return ret;
}
