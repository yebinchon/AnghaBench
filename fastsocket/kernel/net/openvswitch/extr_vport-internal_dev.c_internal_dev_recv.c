
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {int dummy; } ;
struct sk_buff {int len; int protocol; int pkt_type; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int ETH_HLEN ;
 int PACKET_HOST ;
 int eth_hdr (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 TYPE_1__* netdev_vport_priv (struct vport*) ;
 int netif_rx (struct sk_buff*) ;
 int nf_reset (struct sk_buff*) ;
 int secpath_reset (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_postpull_rcsum (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int internal_dev_recv(struct vport *vport, struct sk_buff *skb)
{
 struct net_device *netdev = netdev_vport_priv(vport)->dev;
 int len;

 len = skb->len;

 skb_dst_drop(skb);
 nf_reset(skb);
 secpath_reset(skb);

 skb->dev = netdev;
 skb->pkt_type = PACKET_HOST;
 skb->protocol = eth_type_trans(skb, netdev);
 skb_postpull_rcsum(skb, eth_hdr(skb), ETH_HLEN);

 netif_rx(skb);

 return len;
}
