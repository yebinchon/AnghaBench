
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ priv; } ;
typedef TYPE_1__ wlandevice_t ;
struct sk_buff {int data; } ;
struct TYPE_5__ {int link_bh; int authq; } ;
typedef TYPE_2__ hfa384x_t ;
typedef int hfa384x_InfFrame_t ;


 struct sk_buff* dev_alloc_skb (int) ;
 int memcpy (int ,int *,int) ;
 int schedule_work (int *) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void prism2sta_inf_authreq(wlandevice_t *wlandev,
      hfa384x_InfFrame_t *inf)
{
 hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
 struct sk_buff *skb;

 skb = dev_alloc_skb(sizeof(*inf));
 if (skb) {
  skb_put(skb, sizeof(*inf));
  memcpy(skb->data, inf, sizeof(*inf));
  skb_queue_tail(&hw->authq, skb);
  schedule_work(&hw->link_bh);
 }
}
