
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_nxt; } ;
struct sock {int dummy; } ;
struct bictcp {scalar_t__ sample_cnt; scalar_t__ curr_rtt; int end_seq; int last_ack; int round_start; } ;


 int bictcp_clock () ;
 struct bictcp* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static inline void bictcp_hystart_reset(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bictcp *ca = inet_csk_ca(sk);

 ca->round_start = ca->last_ack = bictcp_clock();
 ca->end_seq = tp->snd_nxt;
 ca->curr_rtt = 0;
 ca->sample_cnt = 0;
}
