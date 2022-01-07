
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp {int eda; } ;
struct uwb_dev_addr {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_dest; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 scalar_t__ printk_ratelimit () ;
 scalar_t__ unlikely (int) ;
 int wlp_eda_for_each (int *,int ,struct sk_buff*) ;
 int wlp_eda_for_virtual (int *,int ,struct uwb_dev_addr*,int ,struct sk_buff*) ;
 int wlp_wss_prep_hdr ;
 int wlp_wss_send_copy ;

int wlp_prepare_tx_frame(struct device *dev, struct wlp *wlp,
    struct sk_buff *skb, struct uwb_dev_addr *dst)
{
 int result = -EINVAL;
 struct ethhdr *eth_hdr = (void *) skb->data;

 if (is_multicast_ether_addr(eth_hdr->h_dest)) {
  result = wlp_eda_for_each(&wlp->eda, wlp_wss_send_copy, skb);
  if (result < 0) {
   if (printk_ratelimit())
    dev_err(dev, "Unable to handle broadcast "
     "frame from WLP client.\n");
   goto out;
  }
  dev_kfree_skb_irq(skb);
  result = 1;

 } else {
  result = wlp_eda_for_virtual(&wlp->eda, eth_hdr->h_dest, dst,
          wlp_wss_prep_hdr, skb);
  if (unlikely(result < 0)) {
   if (printk_ratelimit())
    dev_err(dev, "Unable to prepare "
     "skb for transmission. \n");
   goto out;
  }
 }
out:
 return result;
}
