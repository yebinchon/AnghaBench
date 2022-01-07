
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tnl_ptk_info {int flags; int seq; } ;
struct sk_buff {TYPE_4__* dev; int protocol; scalar_t__ len; int pkt_type; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_errors; int rx_fifo_errors; int rx_crc_errors; int multicast; } ;
struct iphdr {int daddr; } ;
struct TYPE_6__ {int i_flags; } ;
struct ip_tunnel {int gro_cells; TYPE_4__* dev; scalar_t__ i_seqno; TYPE_2__ parms; } ;
typedef scalar_t__ s32 ;
struct TYPE_8__ {scalar_t__ type; struct net_device_stats stats; } ;
struct TYPE_5__ {scalar_t__ iif; } ;
struct TYPE_7__ {TYPE_1__ fl; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ETH_HLEN ;
 int PACKET_BROADCAST ;
 int TUNNEL_CSUM ;
 int TUNNEL_SEQ ;
 int eth_hdr (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,TYPE_4__*) ;
 int gro_cells_receive (int *,struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ipgre_ecn_decapsulate (struct iphdr const*,struct sk_buff*) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ ntohl (int ) ;
 int skb_postpull_rcsum (struct sk_buff*,int ,int ) ;
 TYPE_3__* skb_rtable (struct sk_buff*) ;

int ip_tunnel_rcv(struct ip_tunnel *tunnel, struct sk_buff *skb,
    const struct tnl_ptk_info *tpi, bool log_ecn_error)
{
 struct net_device_stats *stats = &tunnel->dev->stats;
 const struct iphdr *iph = ip_hdr(skb);
 if ((!(tpi->flags&TUNNEL_CSUM) && (tunnel->parms.i_flags&TUNNEL_CSUM)) ||
      ((tpi->flags&TUNNEL_CSUM) && !(tunnel->parms.i_flags&TUNNEL_CSUM))) {
  tunnel->dev->stats.rx_crc_errors++;
  tunnel->dev->stats.rx_errors++;
  goto drop;
 }

 if (tunnel->parms.i_flags&TUNNEL_SEQ) {
  if (!(tpi->flags&TUNNEL_SEQ) ||
      (tunnel->i_seqno && (s32)(ntohl(tpi->seq) - tunnel->i_seqno) < 0)) {
   tunnel->dev->stats.rx_fifo_errors++;
   tunnel->dev->stats.rx_errors++;
   goto drop;
  }
  tunnel->i_seqno = ntohl(tpi->seq) + 1;
 }

 ipgre_ecn_decapsulate(iph, skb);

 stats->rx_packets++;
 stats->rx_bytes += skb->len;

 if (tunnel->dev->type == ARPHRD_ETHER) {
  skb->protocol = eth_type_trans(skb, tunnel->dev);
  skb_postpull_rcsum(skb, eth_hdr(skb), ETH_HLEN);
 } else {
  skb->dev = tunnel->dev;
 }
 gro_cells_receive(&tunnel->gro_cells, skb);
 return 0;

drop:
 kfree_skb(skb);
 return 0;
}
