
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int frto_counter; scalar_t__ undo_marker; scalar_t__ snd_cwnd; int frto_highmark; int snd_una; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_retransmits; } ;


 int FLAG_ANY_PROGRESS ;
 int FLAG_DATA_ACKED ;
 int FLAG_DATA_SACKED ;
 int FLAG_FORWARD_PROGRESS ;
 int FLAG_NONHEAD_RETRANS_ACKED ;
 int FLAG_NOT_DUP ;
 int FLAG_ONLY_ORIG_SACKED ;
 int FLAG_RETRANS_DATA_ACKED ;
 int LINUX_MIB_TCPSPURIOUSRTOS ;
 int NET_INC_STATS_BH (int ,int ) ;
 int before (int ,int ) ;
 TYPE_1__* inet_csk (struct sock*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int sock_net (struct sock*) ;
 int sysctl_tcp_frto_response ;
 int tcp_conservative_spur_to_response (struct tcp_sock*) ;
 int tcp_enter_frto_loss (struct sock*,int,int) ;
 int tcp_is_sackfrto (struct tcp_sock*) ;
 int tcp_may_send_now (struct sock*) ;
 scalar_t__ tcp_packets_in_flight (struct tcp_sock*) ;
 int tcp_ratehalving_spur_to_response (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_undo_spur_to_response (struct sock*,int) ;
 int tcp_verify_left_out (struct tcp_sock*) ;

__attribute__((used)) static int tcp_process_frto(struct sock *sk, int flag)
{
 struct tcp_sock *tp = tcp_sk(sk);

 tcp_verify_left_out(tp);


 if (flag & FLAG_DATA_ACKED)
  inet_csk(sk)->icsk_retransmits = 0;

 if ((flag & FLAG_NONHEAD_RETRANS_ACKED) ||
     ((tp->frto_counter >= 2) && (flag & FLAG_RETRANS_DATA_ACKED)))
  tp->undo_marker = 0;

 if (!before(tp->snd_una, tp->frto_highmark)) {
  tcp_enter_frto_loss(sk, (tp->frto_counter == 1 ? 2 : 3), flag);
  return 1;
 }

 if (!tcp_is_sackfrto(tp)) {




  if (!(flag & FLAG_ANY_PROGRESS) && (flag & FLAG_NOT_DUP))
   return 1;

  if (!(flag & FLAG_DATA_ACKED)) {
   tcp_enter_frto_loss(sk, (tp->frto_counter == 1 ? 0 : 3),
         flag);
   return 1;
  }
 } else {
  if (!(flag & FLAG_DATA_ACKED) && (tp->frto_counter == 1)) {
   if (!tcp_packets_in_flight(tp)) {
    tcp_enter_frto_loss(sk, 2, flag);
    return 1;
   }


   tp->snd_cwnd = min(tp->snd_cwnd,
        tcp_packets_in_flight(tp));
   return 1;
  }

  if ((tp->frto_counter >= 2) &&
      (!(flag & FLAG_FORWARD_PROGRESS) ||
       ((flag & FLAG_DATA_SACKED) &&
        !(flag & FLAG_ONLY_ORIG_SACKED)))) {

   if (!(flag & FLAG_FORWARD_PROGRESS) &&
       (flag & FLAG_NOT_DUP))
    return 1;

   tcp_enter_frto_loss(sk, 3, flag);
   return 1;
  }
 }

 if (tp->frto_counter == 1) {

  tp->snd_cwnd = tcp_packets_in_flight(tp) + 2;
  tp->frto_counter = 2;

  if (!tcp_may_send_now(sk))
   tcp_enter_frto_loss(sk, 2, flag);

  return 1;
 } else {
  switch (sysctl_tcp_frto_response) {
  case 2:
   tcp_undo_spur_to_response(sk, flag);
   break;
  case 1:
   tcp_conservative_spur_to_response(tp);
   break;
  default:
   tcp_ratehalving_spur_to_response(sk);
   break;
  }
  tp->frto_counter = 0;
  tp->undo_marker = 0;
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPSPURIOUSRTOS);
 }
 return 0;
}
