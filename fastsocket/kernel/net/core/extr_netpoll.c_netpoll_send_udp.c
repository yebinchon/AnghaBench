
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int source; int dest; int len; scalar_t__ check; } ;
struct sk_buff {int len; int protocol; TYPE_1__* dev; } ;
struct netpoll {int local_port; int remote_port; int local_ip; int remote_ip; TYPE_1__* dev; int remote_mac; } ;
struct iphdr {unsigned char tot_len; int ttl; unsigned char saddr; unsigned char daddr; int ihl; scalar_t__ check; int protocol; scalar_t__ frag_off; scalar_t__ id; scalar_t__ tos; } ;
struct ethhdr {int h_proto; int h_dest; int h_source; } ;
struct TYPE_2__ {int dev_addr; } ;


 scalar_t__ CSUM_MANGLED_0 ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int ETH_P_IP ;
 int IPPROTO_UDP ;
 int NET_IP_ALIGN ;
 int csum_partial (struct udphdr*,int,int ) ;
 scalar_t__ csum_tcpudp_magic (int,int,int,int ,int ) ;
 struct sk_buff* find_skb (struct netpoll*,int,int) ;
 int htons (int) ;
 scalar_t__ ip_fast_csum (unsigned char*,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int memcpy (int ,int ,int ) ;
 int netpoll_send_skb (struct netpoll*,struct sk_buff*) ;
 int put_unaligned (int,unsigned char*) ;
 int skb_copy_to_linear_data (struct sk_buff*,char const*,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

void netpoll_send_udp(struct netpoll *np, const char *msg, int len)
{
 int total_len, eth_len, ip_len, udp_len;
 struct sk_buff *skb;
 struct udphdr *udph;
 struct iphdr *iph;
 struct ethhdr *eth;

 udp_len = len + sizeof(*udph);
 ip_len = eth_len = udp_len + sizeof(*iph);
 total_len = eth_len + ETH_HLEN + NET_IP_ALIGN;

 skb = find_skb(np, total_len, total_len - len);
 if (!skb)
  return;

 skb_copy_to_linear_data(skb, msg, len);
 skb->len += len;

 skb_push(skb, sizeof(*udph));
 skb_reset_transport_header(skb);
 udph = udp_hdr(skb);
 udph->source = htons(np->local_port);
 udph->dest = htons(np->remote_port);
 udph->len = htons(udp_len);
 udph->check = 0;
 udph->check = csum_tcpudp_magic(np->local_ip,
     np->remote_ip,
     udp_len, IPPROTO_UDP,
     csum_partial(udph, udp_len, 0));
 if (udph->check == 0)
  udph->check = CSUM_MANGLED_0;

 skb_push(skb, sizeof(*iph));
 skb_reset_network_header(skb);
 iph = ip_hdr(skb);


 put_unaligned(0x45, (unsigned char *)iph);
 iph->tos = 0;
 put_unaligned(htons(ip_len), &(iph->tot_len));
 iph->id = 0;
 iph->frag_off = 0;
 iph->ttl = 64;
 iph->protocol = IPPROTO_UDP;
 iph->check = 0;
 put_unaligned(np->local_ip, &(iph->saddr));
 put_unaligned(np->remote_ip, &(iph->daddr));
 iph->check = ip_fast_csum((unsigned char *)iph, iph->ihl);

 eth = (struct ethhdr *) skb_push(skb, ETH_HLEN);
 skb_reset_mac_header(skb);
 skb->protocol = eth->h_proto = htons(ETH_P_IP);
 memcpy(eth->h_source, np->dev->dev_addr, ETH_ALEN);
 memcpy(eth->h_dest, np->remote_mac, ETH_ALEN);

 skb->dev = np->dev;

 netpoll_send_skb(np, skb);
}
