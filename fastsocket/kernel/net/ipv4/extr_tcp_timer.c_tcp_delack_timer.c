
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ memory; int prequeue; } ;
struct tcp_sock {TYPE_1__ ucopy; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int blocked; int pending; int ato; scalar_t__ pingpong; scalar_t__ timeout; } ;
struct inet_connection_sock {TYPE_2__ icsk_ack; int icsk_rto; int icsk_delack_timer; } ;


 int ICSK_ACK_TIMER ;
 int LINUX_MIB_DELAYEDACKLOCKED ;
 int LINUX_MIB_DELAYEDACKS ;
 int LINUX_MIB_TCPSCHEDULERFAILED ;
 int NET_INC_STATS_BH (int ,int ) ;
 int TCP_ATO_MIN ;
 int TCP_CHECK_TIMER (struct sock*) ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_DELACK_MIN ;
 struct sk_buff* __skb_dequeue (int *) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 scalar_t__ inet_csk_ack_scheduled (struct sock*) ;
 scalar_t__ jiffies ;
 int min (int,int ) ;
 int sk_backlog_rcv (struct sock*,struct sk_buff*) ;
 int sk_mem_reclaim (struct sock*) ;
 int sk_mem_reclaim_partial (struct sock*) ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 int skb_queue_empty (int *) ;
 int sock_net (struct sock*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ tcp_memory_pressure ;
 int tcp_send_ack (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void tcp_delack_timer(unsigned long data)
{
 struct sock *sk = (struct sock *)data;
 struct tcp_sock *tp = tcp_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);

 bh_lock_sock(sk);
 if (sock_owned_by_user(sk)) {

  icsk->icsk_ack.blocked = 1;
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_DELAYEDACKLOCKED);
  sk_reset_timer(sk, &icsk->icsk_delack_timer, jiffies + TCP_DELACK_MIN);
  goto out_unlock;
 }

 sk_mem_reclaim_partial(sk);

 if (sk->sk_state == TCP_CLOSE || !(icsk->icsk_ack.pending & ICSK_ACK_TIMER))
  goto out;

 if (time_after(icsk->icsk_ack.timeout, jiffies)) {
  sk_reset_timer(sk, &icsk->icsk_delack_timer, icsk->icsk_ack.timeout);
  goto out;
 }
 icsk->icsk_ack.pending &= ~ICSK_ACK_TIMER;

 if (!skb_queue_empty(&tp->ucopy.prequeue)) {
  struct sk_buff *skb;

  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPSCHEDULERFAILED);

  while ((skb = __skb_dequeue(&tp->ucopy.prequeue)) != ((void*)0))
   sk_backlog_rcv(sk, skb);

  tp->ucopy.memory = 0;
 }

 if (inet_csk_ack_scheduled(sk)) {
  if (!icsk->icsk_ack.pingpong) {

   icsk->icsk_ack.ato = min(icsk->icsk_ack.ato << 1, icsk->icsk_rto);
  } else {



   icsk->icsk_ack.pingpong = 0;
   icsk->icsk_ack.ato = TCP_ATO_MIN;
  }
  tcp_send_ack(sk);
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_DELAYEDACKS);
 }
 TCP_CHECK_TIMER(sk);

out:
 if (tcp_memory_pressure)
  sk_mem_reclaim(sk);
out_unlock:
 bh_unlock_sock(sk);
 sock_put(sk);
}
