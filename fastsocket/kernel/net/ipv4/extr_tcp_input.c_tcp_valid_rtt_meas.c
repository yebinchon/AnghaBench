
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_backoff; } ;


 TYPE_1__* inet_csk (struct sock*) ;
 int tcp_rtt_estimator (struct sock*,int ) ;
 int tcp_set_rto (struct sock*) ;

void tcp_valid_rtt_meas(struct sock *sk, u32 seq_rtt)
{
 tcp_rtt_estimator(sk, seq_rtt);
 tcp_set_rto(sk);
 inet_csk(sk)->icsk_backoff = 0;
}
