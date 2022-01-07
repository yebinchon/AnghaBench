
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int write_seq; int pushed_seq; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int TCPCB_FLAG_PSH ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;

__attribute__((used)) static inline void tcp_mark_push(struct tcp_sock *tp, struct sk_buff *skb)
{
 TCP_SKB_CB(skb)->flags |= TCPCB_FLAG_PSH;
 tp->pushed_seq = tp->write_seq;
}
