
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u8 ;
struct tcphdr {int rst; int doff; int ack; scalar_t__ check; scalar_t__ urg_ptr; scalar_t__ window; scalar_t__ seq; scalar_t__ fin; scalar_t__ syn; scalar_t__ ack_seq; int source; int dest; } ;
struct sk_buff {int data; int len; } ;
struct net {int dummy; } ;
struct ipv6hdr {scalar_t__ nexthdr; int version; int daddr; int saddr; int hop_limit; } ;
struct flowi {int fl_ip_dport; int fl_ip_sport; int fl6_dst; int fl6_src; scalar_t__ proto; } ;
struct dst_entry {scalar_t__ header_len; scalar_t__ trailer_len; TYPE_1__* dev; scalar_t__ error; } ;
typedef int fl ;
struct TYPE_2__ {int hard_header_len; } ;


 int BUG () ;
 int GFP_ATOMIC ;
 scalar_t__ IPPROTO_TCP ;
 int IPV6_ADDR_UNICAST ;
 int RTAX_HOPLIMIT ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 scalar_t__ csum_ipv6_magic (int *,int *,int,scalar_t__,int ) ;
 int csum_partial (struct tcphdr*,int,int ) ;
 int dst_metric (struct dst_entry*,int ) ;
 int dst_release (struct dst_entry*) ;
 scalar_t__ htonl (scalar_t__) ;
 int ip6_local_out (struct sk_buff*) ;
 struct dst_entry* ip6_route_output (struct net*,int *,struct flowi*) ;
 int ipv6_addr_copy (int *,int *) ;
 int ipv6_addr_type (int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_skip_exthdr (struct sk_buff*,scalar_t__*,scalar_t__*) ;
 int memset (struct flowi*,int ,int) ;
 scalar_t__ net_ratelimit () ;
 int nf_ct_attach (struct sk_buff*,struct sk_buff*) ;
 scalar_t__ ntohl (scalar_t__) ;
 int pr_debug (char*,...) ;
 int printk (char*) ;
 int security_skb_classify_flow (struct sk_buff*,struct flowi*) ;
 int skb_checksum (struct sk_buff*,int,unsigned int,int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int,struct tcphdr*,int) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_network_header (struct sk_buff*) ;
 scalar_t__ xfrm_lookup (struct net*,struct dst_entry**,struct flowi*,int *,int ) ;

__attribute__((used)) static void send_reset(struct net *net, struct sk_buff *oldskb)
{
 struct sk_buff *nskb;
 struct tcphdr otcph, *tcph;
 unsigned int otcplen, hh_len;
 int tcphoff, needs_ack;
 const struct ipv6hdr *oip6h = ipv6_hdr(oldskb);
 struct ipv6hdr *ip6h;
 struct dst_entry *dst = ((void*)0);
 u8 proto;
 struct flowi fl;

 if ((!(ipv6_addr_type(&oip6h->saddr) & IPV6_ADDR_UNICAST)) ||
     (!(ipv6_addr_type(&oip6h->daddr) & IPV6_ADDR_UNICAST))) {
  pr_debug("ip6t_REJECT: addr is not unicast.\n");
  return;
 }

 proto = oip6h->nexthdr;
 tcphoff = ipv6_skip_exthdr(oldskb, ((u8*)(oip6h+1) - oldskb->data), &proto);

 if ((tcphoff < 0) || (tcphoff > oldskb->len)) {
  pr_debug("ip6t_REJECT: Can't get TCP header.\n");
  return;
 }

 otcplen = oldskb->len - tcphoff;


 if (proto != IPPROTO_TCP || otcplen < sizeof(struct tcphdr)) {
  pr_debug("ip6t_REJECT: proto(%d) != IPPROTO_TCP, "
    "or too short. otcplen = %d\n",
    proto, otcplen);
  return;
 }

 if (skb_copy_bits(oldskb, tcphoff, &otcph, sizeof(struct tcphdr)))
  BUG();


 if (otcph.rst) {
  pr_debug("ip6t_REJECT: RST is set\n");
  return;
 }


 if (csum_ipv6_magic(&oip6h->saddr, &oip6h->daddr, otcplen, IPPROTO_TCP,
       skb_checksum(oldskb, tcphoff, otcplen, 0))) {
  pr_debug("ip6t_REJECT: TCP checksum is invalid\n");
  return;
 }

 memset(&fl, 0, sizeof(fl));
 fl.proto = IPPROTO_TCP;
 ipv6_addr_copy(&fl.fl6_src, &oip6h->daddr);
 ipv6_addr_copy(&fl.fl6_dst, &oip6h->saddr);
 fl.fl_ip_sport = otcph.dest;
 fl.fl_ip_dport = otcph.source;
 security_skb_classify_flow(oldskb, &fl);
 dst = ip6_route_output(net, ((void*)0), &fl);
 if (dst == ((void*)0))
  return;
 if (dst->error || xfrm_lookup(net, &dst, &fl, ((void*)0), 0))
  return;

 hh_len = (dst->dev->hard_header_len + 15)&~15;
 nskb = alloc_skb(hh_len + 15 + dst->header_len + sizeof(struct ipv6hdr)
    + sizeof(struct tcphdr) + dst->trailer_len,
    GFP_ATOMIC);

 if (!nskb) {
  if (net_ratelimit())
   printk("ip6t_REJECT: Can't alloc skb\n");
  dst_release(dst);
  return;
 }

 skb_dst_set(nskb, dst);

 skb_reserve(nskb, hh_len + dst->header_len);

 skb_put(nskb, sizeof(struct ipv6hdr));
 skb_reset_network_header(nskb);
 ip6h = ipv6_hdr(nskb);
 ip6h->version = 6;
 ip6h->hop_limit = dst_metric(dst, RTAX_HOPLIMIT);
 ip6h->nexthdr = IPPROTO_TCP;
 ipv6_addr_copy(&ip6h->saddr, &oip6h->daddr);
 ipv6_addr_copy(&ip6h->daddr, &oip6h->saddr);

 tcph = (struct tcphdr *)skb_put(nskb, sizeof(struct tcphdr));

 tcph->doff = sizeof(struct tcphdr)/4;
 tcph->source = otcph.dest;
 tcph->dest = otcph.source;

 if (otcph.ack) {
  needs_ack = 0;
  tcph->seq = otcph.ack_seq;
  tcph->ack_seq = 0;
 } else {
  needs_ack = 1;
  tcph->ack_seq = htonl(ntohl(otcph.seq) + otcph.syn + otcph.fin
          + otcplen - (otcph.doff<<2));
  tcph->seq = 0;
 }


 ((u_int8_t *)tcph)[13] = 0;
 tcph->rst = 1;
 tcph->ack = needs_ack;
 tcph->window = 0;
 tcph->urg_ptr = 0;
 tcph->check = 0;


 tcph->check = csum_ipv6_magic(&ipv6_hdr(nskb)->saddr,
          &ipv6_hdr(nskb)->daddr,
          sizeof(struct tcphdr), IPPROTO_TCP,
          csum_partial(tcph,
         sizeof(struct tcphdr), 0));

 nf_ct_attach(nskb, oldskb);

 ip6_local_out(nskb);
}
