
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ pkt_type; } ;
struct packet_type {int type; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int net; } ;
struct TYPE_4__ {scalar_t__ net; } ;
struct ipxhdr {scalar_t__ ipx_checksum; TYPE_2__ ipx_source; TYPE_1__ ipx_dest; int ipx_tctrl; int ipx_pktsize; } ;
struct ipx_interface {int dummy; } ;
struct TYPE_6__ {scalar_t__ ipx_dest_net; int ipx_source_net; int ipx_tctrl; } ;


 int GFP_ATOMIC ;
 scalar_t__ IPX_NO_CHECKSUM ;
 TYPE_3__* IPX_SKB_CB (struct sk_buff*) ;
 scalar_t__ PACKET_OTHERHOST ;
 int dev_net (struct net_device*) ;
 int init_net ;
 scalar_t__ ipx_cksum (struct ipxhdr*,int) ;
 struct ipxhdr* ipx_hdr (struct sk_buff*) ;
 scalar_t__ ipxcfg_auto_create_interfaces ;
 struct ipx_interface* ipxitf_auto_create (struct net_device*,int ) ;
 struct ipx_interface* ipxitf_find_using_phys (struct net_device*,int ) ;
 int ipxitf_hold (struct ipx_interface*) ;
 int ipxitf_put (struct ipx_interface*) ;
 int ipxitf_rcv (struct ipx_interface*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int *) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;

__attribute__((used)) static int ipx_rcv(struct sk_buff *skb, struct net_device *dev, struct packet_type *pt, struct net_device *orig_dev)
{

 struct ipx_interface *intrfc;
 struct ipxhdr *ipx;
 u16 ipx_pktsize;
 int rc = 0;

 if (!net_eq(dev_net(dev), &init_net))
  goto drop;


 if (skb->pkt_type == PACKET_OTHERHOST)
  goto drop;

 if ((skb = skb_share_check(skb, GFP_ATOMIC)) == ((void*)0))
  goto out;

 if (!pskb_may_pull(skb, sizeof(struct ipxhdr)))
  goto drop;

 ipx_pktsize = ntohs(ipx_hdr(skb)->ipx_pktsize);


 if (ipx_pktsize < sizeof(struct ipxhdr) ||
     !pskb_may_pull(skb, ipx_pktsize))
  goto drop;

 ipx = ipx_hdr(skb);
 if (ipx->ipx_checksum != IPX_NO_CHECKSUM &&
    ipx->ipx_checksum != ipx_cksum(ipx, ipx_pktsize))
  goto drop;

 IPX_SKB_CB(skb)->ipx_tctrl = ipx->ipx_tctrl;
 IPX_SKB_CB(skb)->ipx_dest_net = ipx->ipx_dest.net;
 IPX_SKB_CB(skb)->ipx_source_net = ipx->ipx_source.net;


 intrfc = ipxitf_find_using_phys(dev, pt->type);
 if (!intrfc) {
  if (ipxcfg_auto_create_interfaces &&
     IPX_SKB_CB(skb)->ipx_dest_net) {
   intrfc = ipxitf_auto_create(dev, pt->type);
   if (intrfc)
    ipxitf_hold(intrfc);
  }

  if (!intrfc)

   goto drop;
 }

 rc = ipxitf_rcv(intrfc, skb);
 ipxitf_put(intrfc);
 goto out;
drop:
 kfree_skb(skb);
out:
 return rc;
}
