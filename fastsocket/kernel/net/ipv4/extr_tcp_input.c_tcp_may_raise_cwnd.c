
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ snd_cwnd; scalar_t__ snd_ssthresh; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int icsk_ca_state; } ;


 int const FLAG_ECE ;
 int TCPF_CA_CWR ;
 int TCPF_CA_Recovery ;
 TYPE_1__* inet_csk (struct sock const*) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;

__attribute__((used)) static inline int tcp_may_raise_cwnd(const struct sock *sk, const int flag)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 return (!(flag & FLAG_ECE) || tp->snd_cwnd < tp->snd_ssthresh) &&
  !((1 << inet_csk(sk)->icsk_ca_state) & (TCPF_CA_Recovery | TCPF_CA_CWR));
}
