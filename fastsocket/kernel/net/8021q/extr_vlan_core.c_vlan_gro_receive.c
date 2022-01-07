
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;


 scalar_t__ GRO_DROP ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 scalar_t__ __vlan_gro_receive_gr (struct napi_struct*,struct vlan_group*,unsigned int,struct sk_buff*) ;

int vlan_gro_receive(struct napi_struct *napi, struct vlan_group *grp,
       unsigned int vlan_tci, struct sk_buff *skb)
{
 return __vlan_gro_receive_gr(napi, grp, vlan_tci, skb) == GRO_DROP
  ? NET_RX_DROP : NET_RX_SUCCESS;
}
