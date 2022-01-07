
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int ecn_flags; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int TCPCB_FLAG_CWR ;
 int TCPCB_FLAG_ECE ;
 int TCP_ECN_OK ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;

__attribute__((used)) static inline void TCP_ECN_send_synack(struct tcp_sock *tp, struct sk_buff *skb)
{
 TCP_SKB_CB(skb)->flags &= ~TCPCB_FLAG_CWR;
 if (!(tp->ecn_flags & TCP_ECN_OK))
  TCP_SKB_CB(skb)->flags &= ~TCPCB_FLAG_ECE;
}
