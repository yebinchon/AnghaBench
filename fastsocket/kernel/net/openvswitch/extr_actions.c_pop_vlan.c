
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; scalar_t__ len; scalar_t__ vlan_tci; } ;
typedef int __be16 ;


 int ETH_P_8021Q ;
 scalar_t__ VLAN_ETH_HLEN ;
 int __pop_vlan_tci (struct sk_buff*,int *) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ) ;
 scalar_t__ htons (int ) ;
 scalar_t__ likely (int) ;
 int ntohs (int ) ;
 scalar_t__ unlikely (int) ;
 int vlan_tx_tag_present (struct sk_buff*) ;

__attribute__((used)) static int pop_vlan(struct sk_buff *skb)
{
 __be16 tci;
 int err;

 if (likely(vlan_tx_tag_present(skb))) {
  skb->vlan_tci = 0;
 } else {
  if (unlikely(skb->protocol != htons(ETH_P_8021Q) ||
        skb->len < VLAN_ETH_HLEN))
   return 0;

  err = __pop_vlan_tci(skb, &tci);
  if (err)
   return err;
 }

 if (likely(skb->protocol != htons(ETH_P_8021Q) ||
     skb->len < VLAN_ETH_HLEN))
  return 0;

 err = __pop_vlan_tci(skb, &tci);
 if (unlikely(err))
  return err;

 __vlan_hwaccel_put_tag(skb, ntohs(tci));
 return 0;
}
