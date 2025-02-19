
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int type; int mux_hdr; } ;
struct wlp_frame_std_abbrv_hdr {int tag; TYPE_3__ hdr; } ;
struct uwb_dev_addr {int * data; } ;
struct wlp_eda_node {unsigned char* eth_addr; scalar_t__ state; TYPE_4__* wss; struct uwb_dev_addr dev_addr; } ;
struct wlp {TYPE_2__* rc; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int tag; } ;
struct TYPE_5__ {struct device dev; } ;
struct TYPE_6__ {TYPE_1__ uwb_dev; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int WLP_FRAME_STANDARD ;
 int WLP_PROTOCOL_ID ;
 scalar_t__ WLP_WSS_CONNECTED ;
 scalar_t__ __skb_push (struct sk_buff*,int) ;
 int cpu_to_le16 (int ) ;
 int dev_err (struct device*,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,int ,int ) ;
 scalar_t__ printk_ratelimit () ;
 int skb_headroom (struct sk_buff*) ;

int wlp_wss_prep_hdr(struct wlp *wlp, struct wlp_eda_node *eda_entry,
       void *_skb)
{
 struct device *dev = &wlp->rc->uwb_dev.dev;
 int result = 0;
 unsigned char *eth_addr = eda_entry->eth_addr;
 struct uwb_dev_addr *dev_addr = &eda_entry->dev_addr;
 struct sk_buff *skb = _skb;
 struct wlp_frame_std_abbrv_hdr *std_hdr;

 if (eda_entry->state == WLP_WSS_CONNECTED) {

  BUG_ON(skb_headroom(skb) < sizeof(*std_hdr));
  std_hdr = (void *) __skb_push(skb, sizeof(*std_hdr));
  std_hdr->hdr.mux_hdr = cpu_to_le16(WLP_PROTOCOL_ID);
  std_hdr->hdr.type = WLP_FRAME_STANDARD;
  std_hdr->tag = eda_entry->wss->tag;
 } else {
  if (printk_ratelimit())
   dev_err(dev, "WLP: Destination neighbor (Ethernet: "
    "%02x:%02x:%02x:%02x:%02x:%02x, Dev: "
    "%02x:%02x) is not connected. \n", eth_addr[0],
    eth_addr[1], eth_addr[2], eth_addr[3],
    eth_addr[4], eth_addr[5], dev_addr->data[1],
    dev_addr->data[0]);
  result = -EINVAL;
 }
 return result;
}
