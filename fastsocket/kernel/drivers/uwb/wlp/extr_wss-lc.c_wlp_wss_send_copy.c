
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uwb_dev_addr {int dummy; } ;
struct wlp_eda_node {struct uwb_dev_addr dev_addr; } ;
struct wlp {int (* xmit_frame ) (struct wlp*,struct sk_buff*,struct uwb_dev_addr*) ;TYPE_2__* rc; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_ATOMIC ;
 int dev_err (struct device*,char*,...) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 scalar_t__ printk_ratelimit () ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int stub1 (struct wlp*,struct sk_buff*,struct uwb_dev_addr*) ;
 int wlp_wss_connect_prep (struct wlp*,struct wlp_eda_node*,struct sk_buff*) ;

int wlp_wss_send_copy(struct wlp *wlp, struct wlp_eda_node *eda_entry,
        void *_skb)
{
 int result = -ENOMEM;
 struct device *dev = &wlp->rc->uwb_dev.dev;
 struct sk_buff *skb = _skb;
 struct sk_buff *copy;
 struct uwb_dev_addr *dev_addr = &eda_entry->dev_addr;

 copy = skb_copy(skb, GFP_ATOMIC);
 if (copy == ((void*)0)) {
  if (printk_ratelimit())
   dev_err(dev, "WLP: Unable to copy skb for "
    "transmission.\n");
  goto out;
 }
 result = wlp_wss_connect_prep(wlp, eda_entry, copy);
 if (result < 0) {
  if (printk_ratelimit())
   dev_err(dev, "WLP: Unable to connect/send skb "
    "to neighbor.\n");
  dev_kfree_skb_irq(copy);
  goto out;
 } else if (result == 1)

  goto out;
 BUG_ON(wlp->xmit_frame == ((void*)0));
 result = wlp->xmit_frame(wlp, copy, dev_addr);
 if (result < 0) {
  if (printk_ratelimit())
   dev_err(dev, "WLP: Unable to transmit frame: %d\n",
    result);
  if ((result == -ENXIO) && printk_ratelimit())
   dev_err(dev, "WLP: Is network interface up? \n");

  dev_kfree_skb_irq(copy);
 }
out:
 return result;
}
