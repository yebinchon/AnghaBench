
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vlan_rx_stats {int multicast; int rx_bytes; int rx_packets; } ;
struct sk_buff {int vlan_tci; int pkt_type; scalar_t__ len; int priority; struct net_device* dev; } ;
struct net_device {int dev_addr; } ;
struct TYPE_4__ {int h_dest; } ;
struct TYPE_3__ {int vlan_rx_stats; struct net_device* real_dev; } ;



 int PACKET_HOST ;


 int VLAN_VID_MASK ;
 int compare_ether_addr (int ,int ) ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 int is_vlan_dev (struct net_device*) ;
 int netif_nit_deliver (struct sk_buff*) ;
 struct vlan_rx_stats* per_cpu_ptr (int ,int ) ;
 int smp_processor_id () ;
 TYPE_1__* vlan_dev_info (struct net_device*) ;
 int vlan_get_ingress_priority (struct net_device*,int) ;

int vlan_hwaccel_do_receive(struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 struct vlan_rx_stats *rx_stats;
 if (!is_vlan_dev(skb->dev)) {
  if (skb->vlan_tci & VLAN_VID_MASK)
   skb->pkt_type = 128;
  return 0;
 }

 skb->dev = vlan_dev_info(dev)->real_dev;
 netif_nit_deliver(skb);

 skb->dev = dev;
 skb->priority = vlan_get_ingress_priority(dev, skb->vlan_tci);
 skb->vlan_tci = 0;

 rx_stats = per_cpu_ptr(vlan_dev_info(dev)->vlan_rx_stats,
          smp_processor_id());

 rx_stats->rx_packets++;
 rx_stats->rx_bytes += skb->len;

 switch (skb->pkt_type) {
 case 130:
  break;
 case 129:
  rx_stats->multicast++;
  break;
 case 128:



  if (!compare_ether_addr(eth_hdr(skb)->h_dest,
     dev->dev_addr))
   skb->pkt_type = PACKET_HOST;
  break;
 };
 return 0;
}
