
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_cwnd_stamp; int snd_cwnd; } ;


 int min (int ,scalar_t__) ;
 scalar_t__ tcp_max_burst (struct tcp_sock*) ;
 scalar_t__ tcp_packets_in_flight (struct tcp_sock*) ;
 int tcp_time_stamp ;

__attribute__((used)) static inline void tcp_moderate_cwnd(struct tcp_sock *tp)
{
 tp->snd_cwnd = min(tp->snd_cwnd,
      tcp_packets_in_flight(tp) + tcp_max_burst(tp));
 tp->snd_cwnd_stamp = tcp_time_stamp;
}
