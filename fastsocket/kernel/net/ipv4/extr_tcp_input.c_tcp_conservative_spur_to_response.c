
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ bytes_acked; scalar_t__ snd_cwnd_cnt; int snd_ssthresh; int snd_cwnd; } ;


 int TCP_ECN_queue_cwr (struct tcp_sock*) ;
 int min (int ,int ) ;
 int tcp_moderate_cwnd (struct tcp_sock*) ;

__attribute__((used)) static void tcp_conservative_spur_to_response(struct tcp_sock *tp)
{
 tp->snd_cwnd = min(tp->snd_cwnd, tp->snd_ssthresh);
 tp->snd_cwnd_cnt = 0;
 tp->bytes_acked = 0;
 TCP_ECN_queue_cwr(tp);
 tcp_moderate_cwnd(tp);
}
