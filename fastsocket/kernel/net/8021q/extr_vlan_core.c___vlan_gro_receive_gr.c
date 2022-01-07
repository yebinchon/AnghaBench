
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
typedef int gro_result_t ;


 int GRO_DROP ;
 int GRO_NORMAL ;
 int napi_skb_finish (int ,struct sk_buff*) ;
 scalar_t__ netpoll_rx_on (struct sk_buff*) ;
 int skb_gro_reset_offset (struct sk_buff*) ;
 int vlan_gro_common (struct napi_struct*,struct vlan_group*,unsigned int,struct sk_buff*) ;
 scalar_t__ vlan_hwaccel_receive_skb (struct sk_buff*,struct vlan_group*,unsigned int) ;

__attribute__((used)) static inline gro_result_t __vlan_gro_receive_gr(struct napi_struct *napi,
                     struct vlan_group *grp,
                     unsigned int vlan_tci,
       struct sk_buff *skb)
{
 if (netpoll_rx_on(skb))
  return vlan_hwaccel_receive_skb(skb, grp, vlan_tci)
   ? GRO_DROP : GRO_NORMAL;

 skb_gro_reset_offset(skb);

 return napi_skb_finish(vlan_gro_common(napi, grp, vlan_tci, skb), skb);
}
