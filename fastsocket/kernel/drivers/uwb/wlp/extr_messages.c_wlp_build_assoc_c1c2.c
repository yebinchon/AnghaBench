
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlp_wss {int wssid; } ;
struct TYPE_6__ {int type; int mux_hdr; } ;
struct wlp_frame_assoc {int type; int msg_type; int version; TYPE_3__ hdr; } ;
struct wlp_attr_wssid {int dummy; } ;
struct wlp {TYPE_2__* rc; } ;
struct sk_buff {scalar_t__ data; } ;
struct device {int dummy; } ;
typedef enum wlp_assoc_type { ____Placeholder_wlp_assoc_type } wlp_assoc_type ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_5__ {TYPE_1__ uwb_dev; } ;


 int ENOMEM ;
 int WLP_FRAME_ASSOCIATION ;
 int WLP_PROTOCOL_ID ;
 int WLP_VERSION ;
 int cpu_to_le16 (int ) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_err (struct device*,char*) ;
 int skb_put (struct sk_buff*,int) ;
 int wlp_set_msg_type (int *,int) ;
 int wlp_set_version (int *,int ) ;
 int wlp_set_wssid (struct wlp_attr_wssid*,int *) ;

__attribute__((used)) static
int wlp_build_assoc_c1c2(struct wlp *wlp, struct wlp_wss *wss,
    struct sk_buff **skb, enum wlp_assoc_type type)
{
 struct device *dev = &wlp->rc->uwb_dev.dev;
 int result = -ENOMEM;
 struct {
  struct wlp_frame_assoc c_hdr;
  struct wlp_attr_wssid wssid;
 } *c;
 struct sk_buff *_skb;

 _skb = dev_alloc_skb(sizeof(*c));
 if (_skb == ((void*)0)) {
  dev_err(dev, "WLP: Unable to allocate memory for C1/C2 "
   "association frame. \n");
  goto error_alloc;
 }
 c = (void *) _skb->data;
 c->c_hdr.hdr.mux_hdr = cpu_to_le16(WLP_PROTOCOL_ID);
 c->c_hdr.hdr.type = WLP_FRAME_ASSOCIATION;
 c->c_hdr.type = type;
 wlp_set_version(&c->c_hdr.version, WLP_VERSION);
 wlp_set_msg_type(&c->c_hdr.msg_type, type);
 wlp_set_wssid(&c->wssid, &wss->wssid);
 skb_put(_skb, sizeof(*c));
 *skb = _skb;
 result = 0;
error_alloc:
 return result;
}
