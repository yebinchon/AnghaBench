
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
struct sta_info {TYPE_2__* sdata; TYPE_1__ sta; } ;
struct sk_buff {int cb; int protocol; int dev; } ;
struct iapp_layer2_update {int ssap; int control; int* xid_info; scalar_t__ dsap; int len; int sa; int da; } ;
struct TYPE_4__ {int dev; } ;


 int ETH_ALEN ;
 struct sk_buff* dev_alloc_skb (int) ;
 int eth_broadcast_addr (int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int htons (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int netif_rx_ni (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void ieee80211_send_layer2_update(struct sta_info *sta)
{
 struct iapp_layer2_update *msg;
 struct sk_buff *skb;




 skb = dev_alloc_skb(sizeof(*msg));
 if (!skb)
  return;
 msg = (struct iapp_layer2_update *)skb_put(skb, sizeof(*msg));




 eth_broadcast_addr(msg->da);
 memcpy(msg->sa, sta->sta.addr, ETH_ALEN);
 msg->len = htons(6);
 msg->dsap = 0;
 msg->ssap = 0x01;
 msg->control = 0xaf;

 msg->xid_info[0] = 0x81;
 msg->xid_info[1] = 1;
 msg->xid_info[2] = 0;

 skb->dev = sta->sdata->dev;
 skb->protocol = eth_type_trans(skb, sta->sdata->dev);
 memset(skb->cb, 0, sizeof(skb->cb));
 netif_rx_ni(skb);
}
