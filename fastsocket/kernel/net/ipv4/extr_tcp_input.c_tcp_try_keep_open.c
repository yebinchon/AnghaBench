
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int snd_nxt; int high_seq; scalar_t__ retrans_out; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int icsk_ca_state; } ;


 int TCP_CA_Disorder ;
 int TCP_CA_Open ;
 TYPE_1__* inet_csk (struct sock*) ;
 scalar_t__ tcp_left_out (struct tcp_sock*) ;
 int tcp_set_ca_state (struct sock*,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_try_keep_open(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 int state = TCP_CA_Open;

 if (tcp_left_out(tp) || tp->retrans_out)
  state = TCP_CA_Disorder;

 if (inet_csk(sk)->icsk_ca_state != state) {
  tcp_set_ca_state(sk, state);
  tp->high_seq = tp->snd_nxt;
 }
}
