
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sk_buff {void** data; } ;
struct iphdr {int ihl; int frag_off; int protocol; int tos; int saddr; int daddr; } ;
struct flowi {int proto; int fl4_tos; int fl4_src; int fl4_dst; void* fl_ipsec_spi; void* fl_icmp_code; void* fl_icmp_type; void* fl_ip_dport; void* fl_ip_sport; } ;
typedef void* __be32 ;
typedef void* __be16 ;
 int IP_MF ;
 int IP_OFFSET ;
 void* htonl (int ) ;
 int htons (int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int memset (struct flowi*,int ,int) ;
 int ntohs (void*) ;
 int pskb_may_pull (struct sk_buff*,void**) ;
 void** skb_network_header (struct sk_buff*) ;

__attribute__((used)) static void
_decode_session4(struct sk_buff *skb, struct flowi *fl, int reverse)
{
 struct iphdr *iph = ip_hdr(skb);
 u8 *xprth = skb_network_header(skb) + iph->ihl * 4;

 memset(fl, 0, sizeof(struct flowi));
 if (!(iph->frag_off & htons(IP_MF | IP_OFFSET))) {
  switch (iph->protocol) {
  case 129:
  case 128:
  case 130:
  case 131:
  case 134:
   if (xprth + 4 < skb->data ||
       pskb_may_pull(skb, xprth + 4 - skb->data)) {
    __be16 *ports = (__be16 *)xprth;

    fl->fl_ip_sport = ports[!!reverse];
    fl->fl_ip_dport = ports[!reverse];
   }
   break;

  case 132:
   if (pskb_may_pull(skb, xprth + 2 - skb->data)) {
    u8 *icmp = xprth;

    fl->fl_icmp_type = icmp[0];
    fl->fl_icmp_code = icmp[1];
   }
   break;

  case 133:
   if (pskb_may_pull(skb, xprth + 4 - skb->data)) {
    __be32 *ehdr = (__be32 *)xprth;

    fl->fl_ipsec_spi = ehdr[0];
   }
   break;

  case 136:
   if (pskb_may_pull(skb, xprth + 8 - skb->data)) {
    __be32 *ah_hdr = (__be32*)xprth;

    fl->fl_ipsec_spi = ah_hdr[1];
   }
   break;

  case 135:
   if (pskb_may_pull(skb, xprth + 4 - skb->data)) {
    __be16 *ipcomp_hdr = (__be16 *)xprth;

    fl->fl_ipsec_spi = htonl(ntohs(ipcomp_hdr[1]));
   }
   break;
  default:
   fl->fl_ipsec_spi = 0;
   break;
  }
 }
 fl->proto = iph->protocol;
 fl->fl4_dst = reverse ? iph->saddr : iph->daddr;
 fl->fl4_src = reverse ? iph->daddr : iph->saddr;
 fl->fl4_tos = iph->tos;
}
