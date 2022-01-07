
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_proto {int (* rcv ) (struct stp_proto const*,struct sk_buff*,struct net_device*) ;int group_address; } ;
struct sk_buff {int dummy; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct llc_pdu_un {scalar_t__ ssap; scalar_t__ dsap; scalar_t__ ctrl_1; } ;
struct ethhdr {scalar_t__* h_dest; } ;


 scalar_t__ GARP_ADDR_MAX ;
 scalar_t__ GARP_ADDR_MIN ;
 scalar_t__ LLC_PDU_TYPE_U ;
 scalar_t__ LLC_SAP_BSPAN ;
 scalar_t__ compare_ether_addr (scalar_t__*,int ) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int * garp_protos ;
 int kfree_skb (struct sk_buff*) ;
 struct llc_pdu_un* llc_pdu_un_hdr (struct sk_buff*) ;
 struct stp_proto* rcu_dereference (int ) ;
 int stp_proto ;
 int stub1 (struct stp_proto const*,struct sk_buff*,struct net_device*) ;

__attribute__((used)) static int stp_pdu_rcv(struct sk_buff *skb, struct net_device *dev,
         struct packet_type *pt, struct net_device *orig_dev)
{
 const struct ethhdr *eh = eth_hdr(skb);
 const struct llc_pdu_un *pdu = llc_pdu_un_hdr(skb);
 const struct stp_proto *proto;

 if (pdu->ssap != LLC_SAP_BSPAN ||
     pdu->dsap != LLC_SAP_BSPAN ||
     pdu->ctrl_1 != LLC_PDU_TYPE_U)
  goto err;

 if (eh->h_dest[5] >= GARP_ADDR_MIN && eh->h_dest[5] <= GARP_ADDR_MAX) {
  proto = rcu_dereference(garp_protos[eh->h_dest[5] -
          GARP_ADDR_MIN]);
  if (proto &&
      compare_ether_addr(eh->h_dest, proto->group_address))
   goto err;
 } else
  proto = rcu_dereference(stp_proto);

 if (!proto)
  goto err;

 proto->rcv(proto, skb, dev);
 return 0;

err:
 kfree_skb(skb);
 return 0;
}
