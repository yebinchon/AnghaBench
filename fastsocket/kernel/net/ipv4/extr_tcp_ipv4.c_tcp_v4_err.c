
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct tcphdr {int dest; int seq; int source; } ;
struct tcp_sock {int snd_una; int srtt; int snd_nxt; } ;
struct sock {int sk_state; int sk_err; int sk_err_soft; int (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {int len; int dev; scalar_t__ data; } ;
struct request_sock {int sk; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int saddr; int daddr; } ;
struct inet_sock {scalar_t__ recverr; } ;
struct inet_connection_sock {int icsk_backoff; int icsk_rto; int icsk_retransmits; } ;
typedef int __u32 ;
struct TYPE_8__ {scalar_t__ when; } ;
struct TYPE_7__ {int errno; } ;
struct TYPE_6__ {int type; int code; } ;
struct TYPE_5__ {int snt_isn; } ;


 int BUG_ON (int) ;
 int EHOSTUNREACH ;
 int EPROTO ;

 int const ICMP_FRAG_NEEDED ;
 int const ICMP_HOST_UNREACH ;
 int ICMP_INC_STATS_BH (struct net*,int ) ;
 int ICMP_MIB_INERRORS ;
 int const ICMP_NET_UNREACH ;



 int ICSK_TIME_RETRANS ;
 int LINUX_MIB_LOCKDROPPEDICMPS ;
 int LINUX_MIB_OUTOFWINDOWICMPS ;
 int NET_INC_STATS_BH (struct net*,int ) ;
 int const NR_ICMP_UNREACH ;
 int TCP_CLOSE ;

 int TCP_RTO_MAX ;
 TYPE_4__* TCP_SKB_CB (struct sk_buff*) ;


 int TCP_TIMEOUT_INIT ;
 int TCP_TIME_WAIT ;
 int WARN_ON (int ) ;
 int __tcp_set_rto (struct tcp_sock*) ;
 int between (int,int,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct net* dev_net (int ) ;
 int do_pmtu_discovery (struct sock*,struct iphdr*,int ) ;
 TYPE_3__* icmp_err_convert ;
 TYPE_2__* icmp_hdr (struct sk_buff*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reqsk_queue_drop (struct sock*,struct request_sock*,struct request_sock**) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int,int ) ;
 struct request_sock* inet_csk_search_req (struct sock*,struct request_sock***,int ,int ,int ) ;
 int inet_iif (struct sk_buff*) ;
 struct sock* inet_lookup (struct net*,int *,int ,int ,int ,int ,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 int min (int,scalar_t__) ;
 int ntohl (int ) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int tcp_bound_rto (struct sock*) ;
 int tcp_done (struct sock*) ;
 int tcp_hashinfo ;
 int tcp_retransmit_timer (struct sock*) ;
 TYPE_1__* tcp_rsk (struct request_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_time_stamp ;
 struct sk_buff* tcp_write_queue_head (struct sock*) ;

void tcp_v4_err(struct sk_buff *icmp_skb, u32 info)
{
 struct iphdr *iph = (struct iphdr *)icmp_skb->data;
 struct tcphdr *th = (struct tcphdr *)(icmp_skb->data + (iph->ihl << 2));
 struct inet_connection_sock *icsk;
 struct tcp_sock *tp;
 struct inet_sock *inet;
 const int type = icmp_hdr(icmp_skb)->type;
 const int code = icmp_hdr(icmp_skb)->code;
 struct sock *sk;
 struct sk_buff *skb;
 __u32 seq;
 __u32 remaining;
 int err;
 struct net *net = dev_net(icmp_skb->dev);

 if (icmp_skb->len < (iph->ihl << 2) + 8) {
  ICMP_INC_STATS_BH(net, ICMP_MIB_INERRORS);
  return;
 }

 sk = inet_lookup(net, &tcp_hashinfo, iph->daddr, th->dest,
   iph->saddr, th->source, inet_iif(icmp_skb));
 if (!sk) {
  ICMP_INC_STATS_BH(net, ICMP_MIB_INERRORS);
  return;
 }
 if (sk->sk_state == TCP_TIME_WAIT) {
  inet_twsk_put(inet_twsk(sk));
  return;
 }

 bh_lock_sock(sk);



 if (sock_owned_by_user(sk))
  NET_INC_STATS_BH(net, LINUX_MIB_LOCKDROPPEDICMPS);

 if (sk->sk_state == TCP_CLOSE)
  goto out;

 icsk = inet_csk(sk);
 tp = tcp_sk(sk);
 seq = ntohl(th->seq);
 if (sk->sk_state != 130 &&
     !between(seq, tp->snd_una, tp->snd_nxt)) {
  NET_INC_STATS_BH(net, LINUX_MIB_OUTOFWINDOWICMPS);
  goto out;
 }

 switch (type) {
 case 132:

  goto out;
 case 133:
  err = EPROTO;
  break;
 case 134:
  if (code > NR_ICMP_UNREACH)
   goto out;

  if (code == ICMP_FRAG_NEEDED) {
   if (!sock_owned_by_user(sk))
    do_pmtu_discovery(sk, iph, info);
   goto out;
  }

  err = icmp_err_convert[code].errno;


  if (code != ICMP_NET_UNREACH && code != ICMP_HOST_UNREACH)
   break;
  if (seq != tp->snd_una || !icsk->icsk_retransmits ||
      !icsk->icsk_backoff)
   break;

  if (sock_owned_by_user(sk))
   break;

  icsk->icsk_backoff--;
  inet_csk(sk)->icsk_rto = (tp->srtt ? __tcp_set_rto(tp) :
   TCP_TIMEOUT_INIT) << icsk->icsk_backoff;
  tcp_bound_rto(sk);

  skb = tcp_write_queue_head(sk);
  BUG_ON(!skb);

  remaining = icsk->icsk_rto - min(icsk->icsk_rto,
    tcp_time_stamp - TCP_SKB_CB(skb)->when);

  if (remaining) {
   inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
        remaining, TCP_RTO_MAX);
  } else {


   tcp_retransmit_timer(sk);
  }

  break;
 case 131:
  err = EHOSTUNREACH;
  break;
 default:
  goto out;
 }

 switch (sk->sk_state) {
  struct request_sock *req, **prev;
 case 130:
  if (sock_owned_by_user(sk))
   goto out;

  req = inet_csk_search_req(sk, &prev, th->dest,
       iph->daddr, iph->saddr);
  if (!req)
   goto out;




  WARN_ON(req->sk);

  if (seq != tcp_rsk(req)->snt_isn) {
   NET_INC_STATS_BH(net, LINUX_MIB_OUTOFWINDOWICMPS);
   goto out;
  }







  inet_csk_reqsk_queue_drop(sk, req, prev);
  goto out;

 case 128:
 case 129:


  if (!sock_owned_by_user(sk)) {
   sk->sk_err = err;

   sk->sk_error_report(sk);

   tcp_done(sk);
  } else {
   sk->sk_err_soft = err;
  }
  goto out;
 }
 inet = inet_sk(sk);
 if (!sock_owned_by_user(sk) && inet->recverr) {
  sk->sk_err = err;
  sk->sk_error_report(sk);
 } else {
  sk->sk_err_soft = err;
 }

out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
