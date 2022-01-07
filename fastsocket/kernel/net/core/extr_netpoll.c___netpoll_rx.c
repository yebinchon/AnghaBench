
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct udphdr {int source; int dest; int len; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ pkt_type; int len; scalar_t__ data; TYPE_1__* dev; } ;
struct netpoll_info {int arp_tx; struct netpoll* rx_np; } ;
struct netpoll {scalar_t__ local_ip; scalar_t__ remote_ip; int local_port; int (* rx_hook ) (struct netpoll*,int,char*,int) ;} ;
struct iphdr {int ihl; int version; scalar_t__ protocol; scalar_t__ saddr; scalar_t__ daddr; int tot_len; } ;
struct TYPE_4__ {int h_proto; } ;
struct TYPE_3__ {scalar_t__ type; struct netpoll_info* npinfo; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ETH_P_ARP ;
 int ETH_P_IP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ PACKET_OTHERHOST ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ checksum_udp (struct sk_buff*,struct udphdr*,int,scalar_t__,scalar_t__) ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 scalar_t__ ip_fast_csum (int *,int) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ pskb_trim_rcsum (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ skb_shared (struct sk_buff*) ;
 int stub1 (struct netpoll*,int,char*,int) ;
 int trapped ;

int __netpoll_rx(struct sk_buff *skb)
{
 int proto, len, ulen;
 struct iphdr *iph;
 struct udphdr *uh;
 struct netpoll_info *npi = skb->dev->npinfo;
 struct netpoll *np = npi->rx_np;

 if (!np)
  goto out;
 if (skb->dev->type != ARPHRD_ETHER)
  goto out;


 if (skb->protocol == htons(ETH_P_ARP) &&
     atomic_read(&trapped)) {
  skb_queue_tail(&npi->arp_tx, skb);
  return 1;
 }

 proto = ntohs(eth_hdr(skb)->h_proto);
 if (proto != ETH_P_IP)
  goto out;
 if (skb->pkt_type == PACKET_OTHERHOST)
  goto out;
 if (skb_shared(skb))
  goto out;

 iph = (struct iphdr *)skb->data;
 if (!pskb_may_pull(skb, sizeof(struct iphdr)))
  goto out;
 if (iph->ihl < 5 || iph->version != 4)
  goto out;
 if (!pskb_may_pull(skb, iph->ihl*4))
  goto out;
 if (ip_fast_csum((u8 *)iph, iph->ihl) != 0)
  goto out;

 len = ntohs(iph->tot_len);
 if (skb->len < len || len < iph->ihl*4)
  goto out;





 if (pskb_trim_rcsum(skb, len))
  goto out;

 if (iph->protocol != IPPROTO_UDP)
  goto out;

 len -= iph->ihl*4;
 uh = (struct udphdr *)(((char *)iph) + iph->ihl*4);
 ulen = ntohs(uh->len);

 if (ulen != len)
  goto out;
 if (checksum_udp(skb, uh, ulen, iph->saddr, iph->daddr))
  goto out;
 if (np->local_ip && np->local_ip != iph->daddr)
  goto out;
 if (np->remote_ip && np->remote_ip != iph->saddr)
  goto out;
 if (np->local_port && np->local_port != ntohs(uh->dest))
  goto out;

 np->rx_hook(np, ntohs(uh->source),
      (char *)(uh+1),
      ulen - sizeof(struct udphdr));

 kfree_skb(skb);
 return 1;

out:
 if (atomic_read(&trapped)) {
  kfree_skb(skb);
  return 1;
 }

 return 0;
}
