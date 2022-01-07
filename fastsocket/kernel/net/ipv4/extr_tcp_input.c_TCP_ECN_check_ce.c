
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int ecn_flags; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int flags; } ;



 int INET_ECN_MASK ;

 int TCP_ECN_DEMAND_CWR ;
 int TCP_ECN_OK ;
 int TCP_ECN_SEEN ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff const*) ;
 int tcp_enter_quickack_mode (struct sock*) ;

__attribute__((used)) static inline void TCP_ECN_check_ce(struct tcp_sock *tp, const struct sk_buff *skb)
{
 if (!(tp->ecn_flags & TCP_ECN_OK))
  return;

 switch (TCP_SKB_CB(skb)->flags & INET_ECN_MASK) {
 case 128:




  if (tp->ecn_flags & TCP_ECN_SEEN)
   tcp_enter_quickack_mode((struct sock *)tp);
  break;
 case 129:
  tp->ecn_flags |= TCP_ECN_DEMAND_CWR;

 default:
  tp->ecn_flags |= TCP_ECN_SEEN;
 }
}
