
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct sk_buff {void* len; } ;
struct net_device {int dev_addr; } ;
struct lec_priv {void* sizeoftlvs; int * tlvs; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 struct sk_buff* alloc_skb (void*,int ) ;
 scalar_t__ compare_ether_addr (int const*,int ) ;
 int kfree (int *) ;
 int * kmemdup (int const*,void*,int ) ;
 int l_associate_req ;
 struct lec_priv* netdev_priv (struct net_device*) ;
 int printk (char*) ;
 int send_to_lecd (struct lec_priv*,int ,int *,int *,struct sk_buff*) ;
 int skb_copy_to_linear_data (struct sk_buff*,int const*,void*) ;

__attribute__((used)) static int lane2_associate_req(struct net_device *dev, const u8 *lan_dst,
          const u8 *tlvs, u32 sizeoftlvs)
{
 int retval;
 struct sk_buff *skb;
 struct lec_priv *priv = netdev_priv(dev);

 if (compare_ether_addr(lan_dst, dev->dev_addr))
  return (0);

 kfree(priv->tlvs);

 priv->tlvs = kmemdup(tlvs, sizeoftlvs, GFP_KERNEL);
 if (priv->tlvs == ((void*)0))
  return (0);
 priv->sizeoftlvs = sizeoftlvs;

 skb = alloc_skb(sizeoftlvs, GFP_ATOMIC);
 if (skb == ((void*)0))
  return 0;
 skb->len = sizeoftlvs;
 skb_copy_to_linear_data(skb, tlvs, sizeoftlvs);
 retval = send_to_lecd(priv, l_associate_req, ((void*)0), ((void*)0), skb);
 if (retval != 0)
  printk("lec.c: lane2_associate_req() failed\n");




 return (1);
}
