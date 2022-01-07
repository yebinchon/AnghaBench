
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {unsigned char const* data; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct ipv6_opt_hdr {int nexthdr; } ;
struct ip6_mh {int ip6mh_type; } ;
struct flowi {int proto; int fl_icmp_type; int fl_icmp_code; int fl_ipsec_spi; int fl_mh_type; void* fl_ip_dport; void* fl_ip_sport; int fl6_src; int fl6_dst; } ;
typedef void* __be16 ;
struct TYPE_2__ {size_t nhoff; } ;


 TYPE_1__* IP6CB (struct sk_buff*) ;
 int ipv6_addr_copy (int *,int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_optlen (struct ipv6_opt_hdr*) ;
 int memset (struct flowi*,int ,int) ;
 scalar_t__ pskb_may_pull (struct sk_buff*,int) ;
 unsigned char* skb_network_header (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;

__attribute__((used)) static inline void
_decode_session6(struct sk_buff *skb, struct flowi *fl, int reverse)
{
 int onlyproto = 0;
 u16 offset = skb_network_header_len(skb);
 struct ipv6hdr *hdr = ipv6_hdr(skb);
 struct ipv6_opt_hdr *exthdr;
 const unsigned char *nh = skb_network_header(skb);
 u8 nexthdr = nh[IP6CB(skb)->nhoff];

 memset(fl, 0, sizeof(struct flowi));
 ipv6_addr_copy(&fl->fl6_dst, reverse ? &hdr->saddr : &hdr->daddr);
 ipv6_addr_copy(&fl->fl6_src, reverse ? &hdr->daddr : &hdr->saddr);

 while (nh + offset + 1 < skb->data ||
        pskb_may_pull(skb, nh + offset + 1 - skb->data)) {
  nh = skb_network_header(skb);
  exthdr = (struct ipv6_opt_hdr *)(nh + offset);

  switch (nexthdr) {
  case 130:
   onlyproto = 1;
  case 128:
  case 129:
  case 131:
   offset += ipv6_optlen(exthdr);
   nexthdr = exthdr->nexthdr;
   exthdr = (struct ipv6_opt_hdr *)(nh + offset);
   break;

  case 133:
  case 132:
  case 134:
  case 135:
  case 139:
   if (!onlyproto && (nh + offset + 4 < skb->data ||
        pskb_may_pull(skb, nh + offset + 4 - skb->data))) {
    __be16 *ports = (__be16 *)exthdr;

    fl->fl_ip_sport = ports[!!reverse];
    fl->fl_ip_dport = ports[!reverse];
   }
   fl->proto = nexthdr;
   return;

  case 137:
   if (!onlyproto && pskb_may_pull(skb, nh + offset + 2 - skb->data)) {
    u8 *icmp = (u8 *)exthdr;

    fl->fl_icmp_type = icmp[0];
    fl->fl_icmp_code = icmp[1];
   }
   fl->proto = nexthdr;
   return;
  case 141:
  case 138:
  case 140:
  default:
   fl->fl_ipsec_spi = 0;
   fl->proto = nexthdr;
   return;
  }
 }
}
