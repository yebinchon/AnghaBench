
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin6_addr; } ;
union sctp_addr {TYPE_1__ v6; } ;
struct sk_buff {int dummy; } ;
struct sctp_sock {int v4mapped; } ;
struct TYPE_4__ {int (* addr_valid ) (union sctp_addr*,struct sctp_sock*,struct sk_buff const*) ;} ;


 int AF_INET ;
 int IPV6_ADDR_MAPPED ;
 int IPV6_ADDR_UNICAST ;
 int ipv6_addr_type (int *) ;
 scalar_t__ ipv6_only_sock (int ) ;
 TYPE_2__* sctp_get_af_specific (int ) ;
 int sctp_opt2sk (struct sctp_sock*) ;
 int sctp_v6_map_v4 (union sctp_addr*) ;
 int stub1 (union sctp_addr*,struct sctp_sock*,struct sk_buff const*) ;

__attribute__((used)) static int sctp_v6_addr_valid(union sctp_addr *addr,
         struct sctp_sock *sp,
         const struct sk_buff *skb)
{
 int ret = ipv6_addr_type(&addr->v6.sin6_addr);


 if (ret == IPV6_ADDR_MAPPED) {



  if (!sp || !sp->v4mapped)
   return 0;
  if (sp && ipv6_only_sock(sctp_opt2sk(sp)))
   return 0;
  sctp_v6_map_v4(addr);
  return sctp_get_af_specific(AF_INET)->addr_valid(addr, sp, skb);
 }


 if (!(ret & IPV6_ADDR_UNICAST))
  return 0;

 return 1;
}
