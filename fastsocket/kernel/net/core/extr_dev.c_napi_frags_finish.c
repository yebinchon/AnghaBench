
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; } ;
struct napi_struct {int dev; } ;
typedef int gro_result_t ;


 int ETH_HLEN ;





 int __eth_type_trans_no_dev_change (struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int napi_reuse_skb (struct napi_struct*,struct sk_buff*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_gro_pull (struct sk_buff*,int ) ;

gro_result_t napi_frags_finish(struct napi_struct *napi, struct sk_buff *skb,
          gro_result_t ret)
{
 switch (ret) {
 case 128:
 case 131:





  skb->protocol = __eth_type_trans_no_dev_change(skb, napi->dev);

  if (ret == 131)
   skb_gro_pull(skb, -ETH_HLEN);
  else if (netif_receive_skb(skb))
   ret = 132;
  break;

 case 132:
  kfree_skb(skb);
  break;

 case 129:
  napi_reuse_skb(napi, skb);
  break;

 case 130:
  break;
 }

 return ret;
}
