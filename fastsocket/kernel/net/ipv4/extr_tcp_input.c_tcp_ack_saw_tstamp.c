
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rcv_tsecr; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;


 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_time_stamp ;
 int tcp_valid_rtt_meas (struct sock*,scalar_t__) ;

__attribute__((used)) static void tcp_ack_saw_tstamp(struct sock *sk, int flag)
{
 struct tcp_sock *tp = tcp_sk(sk);

 tcp_valid_rtt_meas(sk, tcp_time_stamp - tp->rx_opt.rcv_tsecr);
}
