
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wlp_uuid {int dummy; } ;
struct wlp_frame_assoc {int type; } ;
struct wlp {TYPE_2__* rc; } ;
struct uwb_mac_addr {int dummy; } ;
struct sk_buff {size_t len; void* data; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int dev_err (struct device*,char*,int ) ;
 int wlp_assoc_frame_str (int ) ;
 int wlp_get_wss_tag (struct wlp*,void*,int *,size_t) ;
 int wlp_get_wss_virt (struct wlp*,void*,struct uwb_mac_addr*,size_t) ;
 int wlp_get_wssid (struct wlp*,void*,struct wlp_uuid*,size_t) ;

int wlp_parse_c3c4_frame(struct wlp *wlp, struct sk_buff *skb,
         struct wlp_uuid *wssid, u8 *tag,
         struct uwb_mac_addr *virt_addr)
{
 struct device *dev = &wlp->rc->uwb_dev.dev;
 int result;
 void *ptr = skb->data;
 size_t len = skb->len;
 size_t used;
 struct wlp_frame_assoc *assoc = ptr;

 used = sizeof(*assoc);
 result = wlp_get_wssid(wlp, ptr + used, wssid, len - used);
 if (result < 0) {
  dev_err(dev, "WLP: unable to obtain WSSID attribute from "
   "%s message.\n", wlp_assoc_frame_str(assoc->type));
  goto error_parse;
 }
 used += result;
 result = wlp_get_wss_tag(wlp, ptr + used, tag, len - used);
 if (result < 0) {
  dev_err(dev, "WLP: unable to obtain WSS tag attribute from "
   "%s message.\n", wlp_assoc_frame_str(assoc->type));
  goto error_parse;
 }
 used += result;
 result = wlp_get_wss_virt(wlp, ptr + used, virt_addr, len - used);
 if (result < 0) {
  dev_err(dev, "WLP: unable to obtain WSS virtual address "
   "attribute from %s message.\n",
   wlp_assoc_frame_str(assoc->type));
  goto error_parse;
 }
error_parse:
 return result;
}
