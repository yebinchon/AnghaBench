
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 int NF_DN_LOCAL_IN ;
 int NF_HOOK (int ,int ,struct sk_buff*,int ,int *,int ) ;
 int PF_DECnet ;
 int dn_nsp_rx_packet ;

int dn_nsp_rx(struct sk_buff *skb)
{
 return NF_HOOK(PF_DECnet, NF_DN_LOCAL_IN, skb, skb->dev, ((void*)0), dn_nsp_rx_packet);
}
