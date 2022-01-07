
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin6_addr; } ;
union sctp_addr {TYPE_1__ v6; } ;
struct sctp_sock {int v4mapped; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {int (* available ) (union sctp_addr*,struct sctp_sock*) ;} ;


 int AF_INET ;
 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_MAPPED ;
 int IPV6_ADDR_UNICAST ;
 int init_net ;
 int ipv6_addr_type (struct in6_addr*) ;
 int ipv6_chk_addr (int *,struct in6_addr*,int *,int ) ;
 scalar_t__ ipv6_only_sock (int ) ;
 TYPE_2__* sctp_get_af_specific (int ) ;
 int sctp_opt2sk (struct sctp_sock*) ;
 int sctp_v6_map_v4 (union sctp_addr*) ;
 int stub1 (union sctp_addr*,struct sctp_sock*) ;

__attribute__((used)) static int sctp_v6_available(union sctp_addr *addr, struct sctp_sock *sp)
{
 int type;
 struct in6_addr *in6 = (struct in6_addr *)&addr->v6.sin6_addr;

 type = ipv6_addr_type(in6);
 if (IPV6_ADDR_ANY == type)
  return 1;
 if (type == IPV6_ADDR_MAPPED) {
  if (sp && !sp->v4mapped)
   return 0;
  if (sp && ipv6_only_sock(sctp_opt2sk(sp)))
   return 0;
  sctp_v6_map_v4(addr);
  return sctp_get_af_specific(AF_INET)->available(addr, sp);
 }
 if (!(type & IPV6_ADDR_UNICAST))
  return 0;

 return ipv6_chk_addr(&init_net, in6, ((void*)0), 0);
}
