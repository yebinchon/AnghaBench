
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_sock {int rcv_ssthresh; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; int truesize; } ;
struct TYPE_3__ {int rcv_mss; } ;
struct TYPE_4__ {TYPE_1__ icsk_ack; } ;


 TYPE_2__* inet_csk (struct sock const*) ;
 int * sysctl_tcp_rmem ;
 struct tcp_sock* tcp_sk (struct sock const*) ;
 int tcp_win_from_space (int ) ;

__attribute__((used)) static int __tcp_grow_window(const struct sock *sk, const struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);

 int truesize = tcp_win_from_space(skb->truesize) >> 1;
 int window = tcp_win_from_space(sysctl_tcp_rmem[2]) >> 1;

 while (tp->rcv_ssthresh <= window) {
  if (truesize <= skb->len)
   return 2 * inet_csk(sk)->icsk_ack.rcv_mss;

  truesize >>= 1;
  window >>= 1;
 }
 return 0;
}
