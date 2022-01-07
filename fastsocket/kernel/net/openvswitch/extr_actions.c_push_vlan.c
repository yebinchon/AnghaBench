
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ data; int csum; } ;
struct ovs_action_push_vlan {int vlan_tci; } ;


 scalar_t__ CHECKSUM_COMPLETE ;
 int ENOMEM ;
 int ETH_ALEN ;
 int VLAN_HLEN ;
 int VLAN_TAG_PRESENT ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int) ;
 int __vlan_put_tag (struct sk_buff*,int ) ;
 int csum_add (int ,int ) ;
 int csum_partial (scalar_t__,int ,int ) ;
 int ntohs (int ) ;
 scalar_t__ unlikely (int ) ;
 int vlan_tx_tag_get (struct sk_buff*) ;
 int vlan_tx_tag_present (struct sk_buff*) ;

__attribute__((used)) static int push_vlan(struct sk_buff *skb, const struct ovs_action_push_vlan *vlan)
{
 if (unlikely(vlan_tx_tag_present(skb))) {
  u16 current_tag;


  current_tag = vlan_tx_tag_get(skb);

  if (!__vlan_put_tag(skb, current_tag))
   return -ENOMEM;

  if (skb->ip_summed == CHECKSUM_COMPLETE)
   skb->csum = csum_add(skb->csum, csum_partial(skb->data
     + (2 * ETH_ALEN), VLAN_HLEN, 0));

 }
 __vlan_hwaccel_put_tag(skb, ntohs(vlan->vlan_tci) & ~VLAN_TAG_PRESENT);
 return 0;
}
