
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int gro_result_t ;







 int kfree_skb (struct sk_buff*) ;
 int netif_receive_skb (struct sk_buff*) ;

gro_result_t napi_skb_finish(gro_result_t ret, struct sk_buff *skb)
{
 switch (ret) {
 case 128:
  if (netif_receive_skb(skb))
   ret = 132;
  break;

 case 132:
 case 129:
  kfree_skb(skb);
  break;

 case 131:
 case 130:
  break;
 }

 return ret;
}
