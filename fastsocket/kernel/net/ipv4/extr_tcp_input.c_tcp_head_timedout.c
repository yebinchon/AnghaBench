
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ packets_out; } ;
struct sock {int dummy; } ;


 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_skb_timedout (struct sock*,int ) ;
 int tcp_write_queue_head (struct sock*) ;

__attribute__((used)) static inline int tcp_head_timedout(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 return tp->packets_out &&
        tcp_skb_timedout(sk, tcp_write_queue_head(sk));
}
