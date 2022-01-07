
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udphdr {scalar_t__ check; int source; } ;
struct sk_buff {unsigned int len; scalar_t__ ip_summed; int csum; } ;
struct ipv6hdr {int dummy; } ;
struct ip_vs_protocol {int name; int (* csum_check ) (scalar_t__,struct sk_buff*,struct ip_vs_protocol*) ;} ;
struct TYPE_4__ {int ip; int in6; } ;
struct TYPE_5__ {int ip; int in6; } ;
struct ip_vs_conn {scalar_t__ af; int protocol; TYPE_1__ caddr; TYPE_2__ vaddr; int vport; int dport; int daddr; int * app; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ CHECKSUM_COMPLETE ;
 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 int IP_VS_DBG (int,char*,int ,scalar_t__,int) ;
 scalar_t__ csum_ipv6_magic (int *,int *,unsigned int,int ,int ) ;
 scalar_t__ csum_tcpudp_magic (int ,int ,unsigned int,int ,int ) ;
 int htons (unsigned int) ;
 unsigned int ip_hdrlen (struct sk_buff*) ;
 int ip_vs_app_pkt_out (struct ip_vs_conn*,struct sk_buff*) ;
 int skb_checksum (struct sk_buff*,unsigned int,unsigned int,int ) ;
 int skb_make_writable (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int stub1 (scalar_t__,struct sk_buff*,struct ip_vs_protocol*) ;
 int udp_fast_csum_update (scalar_t__,struct udphdr*,int *,TYPE_2__*,int ,int ) ;
 int udp_partial_csum_update (scalar_t__,struct udphdr*,int *,TYPE_2__*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
udp_snat_handler(struct sk_buff *skb,
   struct ip_vs_protocol *pp, struct ip_vs_conn *cp)
{
 struct udphdr *udph;
 unsigned int udphoff;
 int oldlen;






  udphoff = ip_hdrlen(skb);
 oldlen = skb->len - udphoff;


 if (!skb_make_writable(skb, udphoff+sizeof(*udph)))
  return 0;

 if (unlikely(cp->app != ((void*)0))) {

  if (pp->csum_check && !pp->csum_check(cp->af, skb, pp))
   return 0;




  if (!ip_vs_app_pkt_out(cp, skb))
   return 0;
 }

 udph = (void *)skb_network_header(skb) + udphoff;
 udph->source = cp->vport;




 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  udp_partial_csum_update(cp->af, udph, &cp->daddr, &cp->vaddr,
     htons(oldlen),
     htons(skb->len - udphoff));
 } else if (!cp->app && (udph->check != 0)) {

  udp_fast_csum_update(cp->af, udph, &cp->daddr, &cp->vaddr,
         cp->dport, cp->vport);
  if (skb->ip_summed == CHECKSUM_COMPLETE)
   skb->ip_summed = CHECKSUM_NONE;
 } else {

  udph->check = 0;
  skb->csum = skb_checksum(skb, udphoff, skb->len - udphoff, 0);
   udph->check = csum_tcpudp_magic(cp->vaddr.ip,
       cp->caddr.ip,
       skb->len - udphoff,
       cp->protocol,
       skb->csum);
  if (udph->check == 0)
   udph->check = CSUM_MANGLED_0;
  IP_VS_DBG(11, "O-pkt: %s O-csum=%d (+%zd)\n",
     pp->name, udph->check,
     (char*)&(udph->check) - (char*)udph);
 }
 return 1;
}
