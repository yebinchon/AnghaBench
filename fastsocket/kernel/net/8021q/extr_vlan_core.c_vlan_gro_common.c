
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vlan_group {int dummy; } ;
struct sk_buff {int deliver_no_wcard; struct net_device* dev; struct sk_buff* next; int pkt_type; int iif; } ;
struct net_device {int flags; int ifindex; int master; } ;
struct napi_struct {struct sk_buff* gro_list; } ;
typedef int gro_result_t ;
struct TYPE_2__ {int same_flow; scalar_t__ flush; } ;


 int ACCESS_ONCE (int ) ;
 int GRO_DROP ;
 int IFF_PROMISC ;
 TYPE_1__* NAPI_GRO_CB (struct sk_buff*) ;
 int PACKET_OTHERHOST ;
 unsigned int VLAN_VID_MASK ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,unsigned int) ;
 int compare_ether_header (int ,int ) ;
 int dev_gro_receive (struct napi_struct*,struct sk_buff*) ;
 scalar_t__ skb_bond_should_drop (struct sk_buff*,int ) ;
 int skb_gro_mac_header (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;
 struct net_device* vlan_group_get_device (struct vlan_group*,int) ;

__attribute__((used)) static gro_result_t
vlan_gro_common(struct napi_struct *napi, struct vlan_group *grp,
  unsigned int vlan_tci, struct sk_buff *skb)
{
 struct sk_buff *p;
 struct net_device *vlan_dev;
 u16 vlan_id;

 if (skb_bond_should_drop(skb, ACCESS_ONCE(skb->dev->master)))
  skb->deliver_no_wcard = 1;

 skb->iif = skb->dev->ifindex;
 __vlan_hwaccel_put_tag(skb, vlan_tci);
 vlan_id = vlan_tci & VLAN_VID_MASK;
 vlan_dev = vlan_group_get_device(grp, vlan_id);

 if (vlan_dev)
  skb->dev = vlan_dev;
 else if (vlan_id) {
  if (!(skb->dev->flags & IFF_PROMISC))
   goto drop;
  skb->pkt_type = PACKET_OTHERHOST;
 }

 for (p = napi->gro_list; p; p = p->next) {
  NAPI_GRO_CB(p)->same_flow =
   p->dev == skb->dev && !compare_ether_header(
    skb_mac_header(p), skb_gro_mac_header(skb));
  NAPI_GRO_CB(p)->flush = 0;
 }

 return dev_gro_receive(napi, skb);

drop:
 return GRO_DROP;
}
