
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct TYPE_8__ {int * s6_addr32; } ;
struct sockaddr_in6 {int sin6_scope_id; TYPE_3__ sin6_addr; int sin6_port; } ;
struct sk_buff {int sk; } ;
struct sctphdr {int source; } ;
struct sctp_ulpevent {int iif; } ;
struct TYPE_9__ {int version; int saddr; } ;
struct TYPE_7__ {int saddr; } ;
struct TYPE_6__ {scalar_t__ v4mapped; } ;


 int IPV6_ADDR_LINKLOCAL ;
 TYPE_5__* ip_hdr (struct sk_buff*) ;
 int ipv6_addr_copy (TYPE_3__*,int *) ;
 int ipv6_addr_type (TYPE_3__*) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 struct sctphdr* sctp_hdr (struct sk_buff*) ;
 int sctp_inet6_msgname (char*,int*) ;
 TYPE_1__* sctp_sk (int ) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_v4_map_v6 (union sctp_addr*) ;

__attribute__((used)) static void sctp_inet6_skb_msgname(struct sk_buff *skb, char *msgname,
       int *addr_len)
{
 struct sctphdr *sh;
 struct sockaddr_in6 *sin6;

 if (msgname) {
  sctp_inet6_msgname(msgname, addr_len);
  sin6 = (struct sockaddr_in6 *)msgname;
  sh = sctp_hdr(skb);
  sin6->sin6_port = sh->source;


  if (sctp_sk(skb->sk)->v4mapped &&
      ip_hdr(skb)->version == 4) {
   sctp_v4_map_v6((union sctp_addr *)sin6);
   sin6->sin6_addr.s6_addr32[3] = ip_hdr(skb)->saddr;
   return;
  }


  ipv6_addr_copy(&sin6->sin6_addr, &ipv6_hdr(skb)->saddr);
  if (ipv6_addr_type(&sin6->sin6_addr) & IPV6_ADDR_LINKLOCAL) {
   struct sctp_ulpevent *ev = sctp_skb2event(skb);
   sin6->sin6_scope_id = ev->iif;
  }
 }
}
