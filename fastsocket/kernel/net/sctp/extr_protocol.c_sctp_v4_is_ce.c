
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tos; } ;


 int INET_ECN_is_ce (int ) ;
 TYPE_1__* ip_hdr (struct sk_buff const*) ;

__attribute__((used)) static int sctp_v4_is_ce(const struct sk_buff *skb)
{
 return INET_ECN_is_ce(ip_hdr(skb)->tos);
}
