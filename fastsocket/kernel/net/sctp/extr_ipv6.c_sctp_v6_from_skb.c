
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin6_addr; int sin6_scope_id; scalar_t__ sin6_flowinfo; int sin6_family; int sin6_port; } ;
union sctp_addr {TYPE_1__ v6; } ;
struct sk_buff {scalar_t__ cb; } ;
struct sctphdr {int dest; int source; } ;
struct inet6_skb_parm {int iif; } ;
typedef int __be16 ;
struct TYPE_4__ {int daddr; int saddr; } ;


 int AF_INET6 ;
 int ipv6_addr_copy (int *,void*) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 struct sctphdr* sctp_hdr (struct sk_buff*) ;

__attribute__((used)) static void sctp_v6_from_skb(union sctp_addr *addr,struct sk_buff *skb,
        int is_saddr)
{
 void *from;
 __be16 *port;
 struct sctphdr *sh;

 port = &addr->v6.sin6_port;
 addr->v6.sin6_family = AF_INET6;
 addr->v6.sin6_flowinfo = 0;
 addr->v6.sin6_scope_id = ((struct inet6_skb_parm *)skb->cb)->iif;

 sh = sctp_hdr(skb);
 if (is_saddr) {
  *port = sh->source;
  from = &ipv6_hdr(skb)->saddr;
 } else {
  *port = sh->dest;
  from = &ipv6_hdr(skb)->daddr;
 }
 ipv6_addr_copy(&addr->v6.sin6_addr, from);
}
