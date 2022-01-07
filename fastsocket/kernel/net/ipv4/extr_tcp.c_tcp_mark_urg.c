
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int write_seq; int snd_up; } ;
struct sk_buff {int dummy; } ;


 int MSG_OOB ;

__attribute__((used)) static inline void tcp_mark_urg(struct tcp_sock *tp, int flags,
    struct sk_buff *skb)
{
 if (flags & MSG_OOB)
  tp->snd_up = tp->write_seq;
}
