
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int rst; int doff; int ack; scalar_t__ syn; scalar_t__ fin; int check; int seq; int ack_seq; int source; int dest; } ;
struct sk_buff {scalar_t__ len; int ip_summed; } ;
struct iphdr {int frag_off; int version; int ihl; int ttl; int daddr; int saddr; scalar_t__ check; int protocol; scalar_t__ id; scalar_t__ tos; } ;
typedef int _otcph ;
struct TYPE_2__ {int rt_flags; } ;


 int CHECKSUM_NONE ;
 int GFP_ATOMIC ;
 int IPPROTO_TCP ;
 int IP_DF ;
 int IP_OFFSET ;
 scalar_t__ LL_MAX_HEADER ;
 int RTAX_HOPLIMIT ;
 int RTCF_BROADCAST ;
 int RTCF_MULTICAST ;
 int RTN_UNSPEC ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int csum_partial (struct tcphdr*,int,int ) ;
 int dst_clone (int ) ;
 int dst_metric (int ,int ) ;
 scalar_t__ dst_mtu (int ) ;
 int htonl (scalar_t__) ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_hdrlen (struct sk_buff*) ;
 int ip_local_out (struct sk_buff*) ;
 scalar_t__ ip_route_me_harder (struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct tcphdr*,int ,int) ;
 int nf_ct_attach (struct sk_buff*,struct sk_buff*) ;
 scalar_t__ nf_ip_checksum (struct sk_buff*,int,scalar_t__,int ) ;
 scalar_t__ ntohl (int ) ;
 int skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,scalar_t__,int,struct tcphdr*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_network_header (struct sk_buff*) ;
 TYPE_1__* skb_rtable (struct sk_buff*) ;
 int tcp_v4_check (int,int ,int ,int ) ;

__attribute__((used)) static void send_reset(struct sk_buff *oldskb, int hook)
{
 struct sk_buff *nskb;
 const struct iphdr *oiph;
 struct iphdr *niph;
 const struct tcphdr *oth;
 struct tcphdr _otcph, *tcph;


 if (ip_hdr(oldskb)->frag_off & htons(IP_OFFSET))
  return;

 oth = skb_header_pointer(oldskb, ip_hdrlen(oldskb),
     sizeof(_otcph), &_otcph);
 if (oth == ((void*)0))
  return;


 if (oth->rst)
  return;

 if (skb_rtable(oldskb)->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST))
  return;


 if (nf_ip_checksum(oldskb, hook, ip_hdrlen(oldskb), IPPROTO_TCP))
  return;
 oiph = ip_hdr(oldskb);

 nskb = alloc_skb(sizeof(struct iphdr) + sizeof(struct tcphdr) +
    LL_MAX_HEADER, GFP_ATOMIC);
 if (!nskb)
  return;

 skb_reserve(nskb, LL_MAX_HEADER);

 skb_reset_network_header(nskb);
 niph = (struct iphdr *)skb_put(nskb, sizeof(struct iphdr));
 niph->version = 4;
 niph->ihl = sizeof(struct iphdr) / 4;
 niph->tos = 0;
 niph->id = 0;
 niph->frag_off = htons(IP_DF);
 niph->protocol = IPPROTO_TCP;
 niph->check = 0;
 niph->saddr = oiph->daddr;
 niph->daddr = oiph->saddr;

 tcph = (struct tcphdr *)skb_put(nskb, sizeof(struct tcphdr));
 memset(tcph, 0, sizeof(*tcph));
 tcph->source = oth->dest;
 tcph->dest = oth->source;
 tcph->doff = sizeof(struct tcphdr) / 4;

 if (oth->ack)
  tcph->seq = oth->ack_seq;
 else {
  tcph->ack_seq = htonl(ntohl(oth->seq) + oth->syn + oth->fin +
          oldskb->len - ip_hdrlen(oldskb) -
          (oth->doff << 2));
  tcph->ack = 1;
 }

 tcph->rst = 1;
 tcph->check = tcp_v4_check(sizeof(struct tcphdr),
           niph->saddr, niph->daddr,
           csum_partial(tcph,
          sizeof(struct tcphdr), 0));


 skb_dst_set(nskb, dst_clone(skb_dst(oldskb)));

 if (ip_route_me_harder(nskb, RTN_UNSPEC))
  goto free_nskb;

 niph->ttl = dst_metric(skb_dst(nskb), RTAX_HOPLIMIT);
 nskb->ip_summed = CHECKSUM_NONE;


 if (nskb->len > dst_mtu(skb_dst(nskb)))
  goto free_nskb;

 nf_ct_attach(nskb, oldskb);

 ip_local_out(nskb);
 return;

 free_nskb:
 kfree_skb(nskb);
}
