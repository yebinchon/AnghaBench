
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int * s6_addr32; } ;
struct sockaddr_in6 {int sin6_scope_id; TYPE_7__ sin6_addr; int sin6_port; } ;
struct TYPE_12__ {int s_addr; } ;
struct TYPE_13__ {TYPE_3__ sin_addr; } ;
struct TYPE_11__ {scalar_t__ sa_family; } ;
union sctp_addr {struct sockaddr_in6 v6; TYPE_4__ v4; TYPE_2__ sa; } ;
struct sctp_ulpevent {struct sctp_association* asoc; } ;
struct TYPE_14__ {union sctp_addr primary_addr; int port; } ;
struct TYPE_10__ {int sk; } ;
struct sctp_association {TYPE_5__ peer; TYPE_1__ base; } ;
struct TYPE_15__ {scalar_t__ v4mapped; } ;


 scalar_t__ AF_INET ;
 int IPV6_ADDR_LINKLOCAL ;
 int htons (int ) ;
 int ipv6_addr_copy (TYPE_7__*,TYPE_7__*) ;
 int ipv6_addr_type (TYPE_7__*) ;
 int sctp_inet6_msgname (char*,int*) ;
 TYPE_6__* sctp_sk (int ) ;
 int sctp_v4_map_v6 (union sctp_addr*) ;

__attribute__((used)) static void sctp_inet6_event_msgname(struct sctp_ulpevent *event,
         char *msgname, int *addrlen)
{
 struct sockaddr_in6 *sin6, *sin6from;

 if (msgname) {
  union sctp_addr *addr;
  struct sctp_association *asoc;

  asoc = event->asoc;
  sctp_inet6_msgname(msgname, addrlen);
  sin6 = (struct sockaddr_in6 *)msgname;
  sin6->sin6_port = htons(asoc->peer.port);
  addr = &asoc->peer.primary_addr;






  if (sctp_sk(asoc->base.sk)->v4mapped &&
      AF_INET == addr->sa.sa_family) {
   sctp_v4_map_v6((union sctp_addr *)sin6);
   sin6->sin6_addr.s6_addr32[3] =
    addr->v4.sin_addr.s_addr;
   return;
  }

  sin6from = &asoc->peer.primary_addr.v6;
  ipv6_addr_copy(&sin6->sin6_addr, &sin6from->sin6_addr);
  if (ipv6_addr_type(&sin6->sin6_addr) & IPV6_ADDR_LINKLOCAL)
   sin6->sin6_scope_id = sin6from->sin6_scope_id;
 }
}
