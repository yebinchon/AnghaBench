
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct yeah {int pkts_acked; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; } ;
typedef int s32 ;


 scalar_t__ TCP_CA_Open ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct yeah* inet_csk_ca (struct sock*) ;
 int tcp_vegas_pkts_acked (struct sock*,int ,int ) ;

__attribute__((used)) static void tcp_yeah_pkts_acked(struct sock *sk, u32 pkts_acked, s32 rtt_us)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 struct yeah *yeah = inet_csk_ca(sk);

 if (icsk->icsk_ca_state == TCP_CA_Open)
  yeah->pkts_acked = pkts_acked;

 tcp_vegas_pkts_acked(sk, pkts_acked, rtt_us);
}
