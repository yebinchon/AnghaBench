
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int ecn_flags; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ cwr; } ;


 int TCP_ECN_DEMAND_CWR ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;

__attribute__((used)) static inline void TCP_ECN_accept_cwr(struct tcp_sock *tp, struct sk_buff *skb)
{
 if (tcp_hdr(skb)->cwr)
  tp->ecn_flags &= ~TCP_ECN_DEMAND_CWR;
}
