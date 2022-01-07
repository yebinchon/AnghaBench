
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rcv_tsecr; scalar_t__ saw_tstamp; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
typedef scalar_t__ s32 ;


 int tcp_ack_no_tstamp (struct sock*,scalar_t__ const,int const) ;
 int tcp_ack_saw_tstamp (struct sock*,int const) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static inline void tcp_ack_update_rtt(struct sock *sk, const int flag,
          const s32 seq_rtt)
{
 const struct tcp_sock *tp = tcp_sk(sk);

 if (tp->rx_opt.saw_tstamp && tp->rx_opt.rcv_tsecr)
  tcp_ack_saw_tstamp(sk, flag);
 else if (seq_rtt >= 0)
  tcp_ack_no_tstamp(sk, seq_rtt, flag);
}
