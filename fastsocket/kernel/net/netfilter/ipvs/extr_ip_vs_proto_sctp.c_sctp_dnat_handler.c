
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ip_vs_protocol {int (* csum_check ) (scalar_t__,struct sk_buff*,struct ip_vs_protocol*) ;} ;
struct ip_vs_conn {scalar_t__ af; int dport; int * app; } ;
struct TYPE_3__ {int dest; } ;
typedef TYPE_1__ sctp_sctphdr_t ;


 scalar_t__ AF_INET6 ;
 unsigned int ip_hdrlen (struct sk_buff*) ;
 int ip_vs_app_pkt_in (struct ip_vs_conn*,struct sk_buff*) ;
 int sctp_nat_csum (struct sk_buff*,TYPE_1__*,unsigned int) ;
 int skb_make_writable (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int stub1 (scalar_t__,struct sk_buff*,struct ip_vs_protocol*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
sctp_dnat_handler(struct sk_buff *skb,
    struct ip_vs_protocol *pp, struct ip_vs_conn *cp)
{
 sctp_sctphdr_t *sctph;
 unsigned int sctphoff;






  sctphoff = ip_hdrlen(skb);


 if (!skb_make_writable(skb, sctphoff + sizeof(*sctph)))
  return 0;

 if (unlikely(cp->app != ((void*)0))) {

  if (pp->csum_check && !pp->csum_check(cp->af, skb, pp))
   return 0;


  if (!ip_vs_app_pkt_in(cp, skb))
   return 0;
 }

 sctph = (void *) skb_network_header(skb) + sctphoff;
 sctph->dest = cp->dport;

 sctp_nat_csum(skb, sctph, sctphoff);

 return 1;
}
