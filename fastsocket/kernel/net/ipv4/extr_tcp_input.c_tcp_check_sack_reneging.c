
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_connection_sock {int icsk_rto; int icsk_retransmits; } ;


 int FLAG_SACK_RENEGING ;
 int ICSK_TIME_RETRANS ;
 int LINUX_MIB_TCPSACKRENEGING ;
 int NET_INC_STATS_BH (int ,int ) ;
 int TCP_RTO_MAX ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 int sock_net (struct sock*) ;
 int tcp_enter_loss (struct sock*,int) ;
 int tcp_retransmit_skb (struct sock*,int ) ;
 int tcp_write_queue_head (struct sock*) ;

__attribute__((used)) static int tcp_check_sack_reneging(struct sock *sk, int flag)
{
 if (flag & FLAG_SACK_RENEGING) {
  struct inet_connection_sock *icsk = inet_csk(sk);
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPSACKRENEGING);

  tcp_enter_loss(sk, 1);
  icsk->icsk_retransmits++;
  tcp_retransmit_skb(sk, tcp_write_queue_head(sk));
  inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
       icsk->icsk_rto, TCP_RTO_MAX);
  return 1;
 }
 return 0;
}
