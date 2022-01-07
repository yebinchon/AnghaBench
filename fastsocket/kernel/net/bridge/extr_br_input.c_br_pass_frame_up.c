
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; scalar_t__ len; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {struct net_device* brdev; } ;


 TYPE_2__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 int NF_BR_LOCAL_IN ;
 int NF_HOOK (int ,int ,struct sk_buff*,struct net_device*,int *,int ) ;
 int PF_BRIDGE ;
 int netif_receive_skb ;

__attribute__((used)) static int br_pass_frame_up(struct sk_buff *skb)
{
 struct net_device *indev, *brdev = BR_INPUT_SKB_CB(skb)->brdev;

 brdev->stats.rx_packets++;
 brdev->stats.rx_bytes += skb->len;

 indev = skb->dev;
 skb->dev = brdev;

 return NF_HOOK(PF_BRIDGE, NF_BR_LOCAL_IN, skb, indev, ((void*)0),
         netif_receive_skb);
}
