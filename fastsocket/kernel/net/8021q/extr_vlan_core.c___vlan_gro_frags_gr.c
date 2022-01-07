
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct sk_buff {int dev; int protocol; } ;
struct napi_struct {int dummy; } ;
typedef int gro_result_t ;


 int GRO_DROP ;
 int GRO_NORMAL ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int napi_frags_finish (struct napi_struct*,struct sk_buff*,int ) ;
 struct sk_buff* napi_frags_skb (struct napi_struct*) ;
 scalar_t__ netpoll_rx_on (struct sk_buff*) ;
 int vlan_gro_common (struct napi_struct*,struct vlan_group*,unsigned int,struct sk_buff*) ;
 scalar_t__ vlan_hwaccel_receive_skb (struct sk_buff*,struct vlan_group*,unsigned int) ;

__attribute__((used)) static inline gro_result_t __vlan_gro_frags_gr(struct napi_struct *napi,
            struct vlan_group *grp,
            unsigned int vlan_tci)
{
 struct sk_buff *skb = napi_frags_skb(napi);

 if (!skb)
  return GRO_DROP;

 if (netpoll_rx_on(skb)) {
  skb->protocol = eth_type_trans(skb, skb->dev);
  return vlan_hwaccel_receive_skb(skb, grp, vlan_tci)
   ? GRO_DROP : GRO_NORMAL;
 }

 return napi_frags_finish(napi, skb,
     vlan_gro_common(napi, grp, vlan_tci, skb));
}
