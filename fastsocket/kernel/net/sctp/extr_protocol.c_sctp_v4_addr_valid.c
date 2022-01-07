
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct TYPE_5__ {TYPE_1__ sin_addr; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct sk_buff {int dummy; } ;
struct sctp_sock {int dummy; } ;
struct TYPE_6__ {int rt_flags; } ;


 scalar_t__ IS_IPV4_UNUSABLE_ADDRESS (int ) ;
 int RTCF_BROADCAST ;
 scalar_t__ ipv6_only_sock (int ) ;
 int sctp_opt2sk (struct sctp_sock*) ;
 TYPE_3__* skb_rtable (struct sk_buff const*) ;

__attribute__((used)) static int sctp_v4_addr_valid(union sctp_addr *addr,
         struct sctp_sock *sp,
         const struct sk_buff *skb)
{

 if (sp && ipv6_only_sock(sctp_opt2sk(sp)))
  return 0;


 if (IS_IPV4_UNUSABLE_ADDRESS(addr->v4.sin_addr.s_addr))
  return 0;


 if (skb && skb_rtable(skb)->rt_flags & RTCF_BROADCAST)
  return 0;

 return 1;
}
