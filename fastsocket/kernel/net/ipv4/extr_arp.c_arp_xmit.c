
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 int NFPROTO_ARP ;
 int NF_ARP_OUT ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,int ,int ) ;
 int dev_queue_xmit ;

void arp_xmit(struct sk_buff *skb)
{

 NF_HOOK(NFPROTO_ARP, NF_ARP_OUT, skb, ((void*)0), skb->dev, dev_queue_xmit);
}
