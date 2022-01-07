
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 int NF_BR_POST_ROUTING ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,int ,int ) ;
 int PF_BRIDGE ;
 int br_dev_queue_push_xmit ;

int br_forward_finish(struct sk_buff *skb)
{
 return NF_HOOK(PF_BRIDGE, NF_BR_POST_ROUTING, skb, ((void*)0), skb->dev,
         br_dev_queue_push_xmit);

}
