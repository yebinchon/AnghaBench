
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcphdr {scalar_t__ fin; int window; scalar_t__ ack; int syn; int rst; } ;
struct TYPE_4__ {int snd_wscale; int tstamp_ok; scalar_t__ saw_tstamp; } ;
struct tcp_sock {int snd_wnd; int rcv_nxt; int write_seq; int snd_una; int linger2; int lsndtime; int advmss; TYPE_1__ rx_opt; int copied_seq; } ;
struct sock {int sk_state; int sk_shutdown; int (* sk_state_change ) (struct sock*) ;int sk_dst_cache; int sk_socket; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {TYPE_2__* icsk_af_ops; } ;
struct TYPE_6__ {scalar_t__ end_seq; scalar_t__ seq; int ack_seq; } ;
struct TYPE_5__ {int (* rebuild_header ) (struct sock*) ;int (* conn_request ) (struct sock*,struct sk_buff*) ;} ;


 int FLAG_SLOWPATH ;
 int LINUX_MIB_TCPABORTONDATA ;
 int NET_INC_STATS_BH (int ,int ) ;
 int POLL_OUT ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int SOCK_WAKE_IO ;
 int TCPOLEN_TSTAMP_ALIGNED ;
 TYPE_3__* TCP_SKB_CB (struct sk_buff*) ;


 int TCP_TIMEWAIT_LEN ;
 int TCP_TIME_WAIT ;
 int __kfree_skb (struct sk_buff*) ;
 int after (scalar_t__,int ) ;
 int before (scalar_t__,int ) ;
 int dst_confirm (int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reset_keepalive_timer (struct sock*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 int smp_mb () ;
 int sock_flag (struct sock*,int ) ;
 int sock_net (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 int stub1 (struct sock*,struct sk_buff*) ;
 int stub2 (struct sock*) ;
 int stub3 (struct sock*) ;
 int stub4 (struct sock*) ;
 scalar_t__ tcp_ack (struct sock*,struct sk_buff*,int ) ;
 int tcp_ack_snd_check (struct sock*) ;
 int tcp_data_queue (struct sock*,struct sk_buff*) ;
 int tcp_data_snd_check (struct sock*) ;
 int tcp_done (struct sock*) ;
 int tcp_fast_path_on (struct tcp_sock*) ;
 int tcp_fin_time (struct sock*) ;
 int tcp_init_buffer_space (struct sock*) ;
 int tcp_init_congestion_control (struct sock*) ;
 int tcp_init_metrics (struct sock*) ;
 int tcp_init_wl (struct tcp_sock*,scalar_t__) ;
 int tcp_initialize_rcv_mss (struct sock*) ;
 int tcp_mtup_init (struct sock*) ;
 int tcp_rcv_synsent_state_process (struct sock*,struct sk_buff*,struct tcphdr*,unsigned int) ;
 int tcp_replace_ts_recent (struct tcp_sock*,scalar_t__) ;
 int tcp_reset (struct sock*) ;
 int tcp_set_state (struct sock*,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_stamp ;
 int tcp_time_wait (struct sock*,int,int) ;
 int tcp_update_metrics (struct sock*) ;
 int tcp_urg (struct sock*,struct sk_buff*,struct tcphdr*) ;
 int tcp_validate_incoming (struct sock*,struct sk_buff*,struct tcphdr*,int ) ;

int tcp_rcv_state_process(struct sock *sk, struct sk_buff *skb,
     struct tcphdr *th, unsigned len)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);
 int queued = 0;

 tp->rx_opt.saw_tstamp = 0;

 switch (sk->sk_state) {
 case 137:
  goto discard;

 case 130:
  if (th->ack)
   return 1;

  if (th->rst)
   goto discard;

  if (th->syn) {
   if (th->fin)
    goto discard;
   if (icsk->icsk_af_ops->conn_request(sk, skb) < 0)
    return 1;
   kfree_skb(skb);
   return 0;
  }
  goto discard;

 case 128:
  queued = tcp_rcv_synsent_state_process(sk, skb, th, len);
  if (queued >= 0)
   return queued;


  tcp_urg(sk, skb, th);
  __kfree_skb(skb);
  tcp_data_snd_check(sk);
  return 0;
 }

 if (!tcp_validate_incoming(sk, skb, th, 0))
  return 0;


 if (th->ack) {
  int acceptable = tcp_ack(sk, skb, FLAG_SLOWPATH) > 0;

  switch (sk->sk_state) {
  case 129:
   if (acceptable) {
    tp->copied_seq = tp->rcv_nxt;
    smp_mb();
    tcp_set_state(sk, 134);
    sk->sk_state_change(sk);






    if (sk->sk_socket)
     sk_wake_async(sk,
            SOCK_WAKE_IO, POLL_OUT);

    tp->snd_una = TCP_SKB_CB(skb)->ack_seq;
    tp->snd_wnd = ntohs(th->window) <<
           tp->rx_opt.snd_wscale;
    tcp_init_wl(tp, TCP_SKB_CB(skb)->seq);

    if (tp->rx_opt.tstamp_ok)
     tp->advmss -= TCPOLEN_TSTAMP_ALIGNED;




    icsk->icsk_af_ops->rebuild_header(sk);

    tcp_init_metrics(sk);

    tcp_init_congestion_control(sk);




    tp->lsndtime = tcp_time_stamp;

    tcp_mtup_init(sk);
    tcp_initialize_rcv_mss(sk);
    tcp_init_buffer_space(sk);
    tcp_fast_path_on(tp);
   } else {
    return 1;
   }
   break;

  case 133:
   if (tp->snd_una == tp->write_seq) {
    tcp_set_state(sk, 132);
    sk->sk_shutdown |= SEND_SHUTDOWN;
    dst_confirm(sk->sk_dst_cache);

    if (!sock_flag(sk, SOCK_DEAD))

     sk->sk_state_change(sk);
    else {
     int tmo;

     if (tp->linger2 < 0 ||
         (TCP_SKB_CB(skb)->end_seq != TCP_SKB_CB(skb)->seq &&
          after(TCP_SKB_CB(skb)->end_seq - th->fin, tp->rcv_nxt))) {
      tcp_done(sk);
      NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPABORTONDATA);
      return 1;
     }

     tmo = tcp_fin_time(sk);
     if (tmo > TCP_TIMEWAIT_LEN) {
      inet_csk_reset_keepalive_timer(sk, tmo - TCP_TIMEWAIT_LEN);
     } else if (th->fin || sock_owned_by_user(sk)) {






      inet_csk_reset_keepalive_timer(sk, tmo);
     } else {
      tcp_time_wait(sk, 132, tmo);
      goto discard;
     }
    }
   }
   break;

  case 135:
   if (tp->snd_una == tp->write_seq) {
    tcp_time_wait(sk, TCP_TIME_WAIT, 0);
    goto discard;
   }
   break;

  case 131:
   if (tp->snd_una == tp->write_seq) {
    tcp_update_metrics(sk);
    tcp_done(sk);
    goto discard;
   }
   break;
  }
 } else
  goto discard;




 tcp_replace_ts_recent(tp, TCP_SKB_CB(skb)->seq);


 tcp_urg(sk, skb, th);


 switch (sk->sk_state) {
 case 136:
 case 135:
 case 131:
  if (!before(TCP_SKB_CB(skb)->seq, tp->rcv_nxt))
   break;
 case 133:
 case 132:




  if (sk->sk_shutdown & RCV_SHUTDOWN) {
   if (TCP_SKB_CB(skb)->end_seq != TCP_SKB_CB(skb)->seq &&
       after(TCP_SKB_CB(skb)->end_seq - th->fin, tp->rcv_nxt)) {
    NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPABORTONDATA);
    tcp_reset(sk);
    return 1;
   }
  }

 case 134:
  tcp_data_queue(sk, skb);
  queued = 1;
  break;
 }


 if (sk->sk_state != 137) {
  tcp_data_snd_check(sk);
  tcp_ack_snd_check(sk);
 }

 if (!queued) {
discard:
  __kfree_skb(skb);
 }
 return 0;
}
