
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct tcphdr {int dest; int seq; int source; } ;
struct tcp_sock {int snd_nxt; int snd_una; } ;
struct sock {int sk_state; int sk_err_soft; int sk_err; int (* sk_error_report ) (struct sock*) ;int sk_bound_dev_if; } ;
struct sk_buff {TYPE_4__* dev; scalar_t__ data; } ;
struct request_sock {int * sk; } ;
struct net {int dummy; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct ipv6_pinfo {scalar_t__ recverr; int saddr; int daddr; int dst_cookie; } ;
struct inet_sock {int sport; int dport; } ;
struct inet6_skb_parm {int dummy; } ;
struct flowi {int fl_ip_sport; int fl_ip_dport; int oif; int fl6_src; int fl6_dst; int proto; } ;
struct dst_entry {int dummy; } ;
typedef int fl ;
typedef int __u32 ;
typedef int __be32 ;
struct TYPE_9__ {int ifindex; } ;
struct TYPE_8__ {scalar_t__ icsk_pmtu_cookie; } ;
struct TYPE_7__ {scalar_t__ hop_limit; } ;
struct TYPE_6__ {int snt_isn; } ;


 int ICMP6_INC_STATS_BH (struct net*,int ,int ) ;
 int ICMP6_MIB_INERRORS ;
 scalar_t__ ICMPV6_PKT_TOOBIG ;
 int IPPROTO_TCP ;
 int LINUX_MIB_LOCKDROPPEDICMPS ;
 int LINUX_MIB_OUTOFWINDOWICMPS ;
 int LINUX_MIB_TCPMINTTLDROP ;
 int NET_INC_STATS_BH (struct net*,int ) ;
 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 int TCP_CLOSE ;



 int TCP_TIME_WAIT ;
 int WARN_ON (int ) ;
 int __in6_dev_get (TYPE_4__*) ;
 struct dst_entry* __sk_dst_check (struct sock*,int ) ;
 int between (int ,int ,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct net* dev_net (TYPE_4__*) ;
 int dst_hold (struct dst_entry*) ;
 scalar_t__ dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int icmpv6_err_convert (scalar_t__,scalar_t__,int*) ;
 struct request_sock* inet6_csk_search_req (struct sock*,struct request_sock***,int ,int *,int *,int ) ;
 int inet6_iif (struct sk_buff*) ;
 struct sock* inet6_lookup (struct net*,int *,int *,int ,int *,int ,int ) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 TYPE_3__* inet_csk (struct sock*) ;
 int inet_csk_reqsk_queue_drop (struct sock*,struct request_sock*,struct request_sock**) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 int ip6_dst_lookup (struct sock*,struct dst_entry**,struct flowi*) ;
 int ipv6_addr_copy (int *,int *) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int memset (struct flowi*,int ,int) ;
 int ntohl (int ) ;
 int security_skb_classify_flow (struct sk_buff*,struct flowi*) ;
 scalar_t__ sk_get_min_hopcount (struct sock*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int tcp_done (struct sock*) ;
 int tcp_hashinfo ;
 TYPE_1__* tcp_rsk (struct request_sock*) ;
 int tcp_simple_retransmit (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_sync_mss (struct sock*,scalar_t__) ;
 int xfrm_lookup (struct net*,struct dst_entry**,struct flowi*,struct sock*,int ) ;

__attribute__((used)) static void tcp_v6_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
  u8 type, u8 code, int offset, __be32 info)
{
 struct ipv6hdr *hdr = (struct ipv6hdr*)skb->data;
 const struct tcphdr *th = (struct tcphdr *)(skb->data+offset);
 struct ipv6_pinfo *np;
 struct sock *sk;
 int err;
 struct tcp_sock *tp;
 __u32 seq;
 struct net *net = dev_net(skb->dev);

 sk = inet6_lookup(net, &tcp_hashinfo, &hdr->daddr,
   th->dest, &hdr->saddr, th->source, skb->dev->ifindex);

 if (sk == ((void*)0)) {
  ICMP6_INC_STATS_BH(net, __in6_dev_get(skb->dev),
       ICMP6_MIB_INERRORS);
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

 if (ipv6_hdr(skb)->hop_limit < sk_get_min_hopcount(sk)) {
  NET_INC_STATS_BH(net, LINUX_MIB_TCPMINTTLDROP);
  goto out;
 }

 tp = tcp_sk(sk);
 seq = ntohl(th->seq);
 if (sk->sk_state != 130 &&
     !between(seq, tp->snd_una, tp->snd_nxt)) {
  NET_INC_STATS_BH(net, LINUX_MIB_OUTOFWINDOWICMPS);
  goto out;
 }

 np = inet6_sk(sk);

 if (type == ICMPV6_PKT_TOOBIG) {
  struct dst_entry *dst = ((void*)0);

  if (sock_owned_by_user(sk))
   goto out;
  if ((1 << sk->sk_state) & (TCPF_LISTEN | TCPF_CLOSE))
   goto out;


  dst = __sk_dst_check(sk, np->dst_cookie);

  if (dst == ((void*)0)) {
   struct inet_sock *inet = inet_sk(sk);
   struct flowi fl;





   memset(&fl, 0, sizeof(fl));
   fl.proto = IPPROTO_TCP;
   ipv6_addr_copy(&fl.fl6_dst, &np->daddr);
   ipv6_addr_copy(&fl.fl6_src, &np->saddr);
   fl.oif = sk->sk_bound_dev_if;
   fl.fl_ip_dport = inet->dport;
   fl.fl_ip_sport = inet->sport;
   security_skb_classify_flow(skb, &fl);

   if ((err = ip6_dst_lookup(sk, &dst, &fl))) {
    sk->sk_err_soft = -err;
    goto out;
   }

   if ((err = xfrm_lookup(net, &dst, &fl, sk, 0)) < 0) {
    sk->sk_err_soft = -err;
    goto out;
   }

  } else
   dst_hold(dst);

  if (inet_csk(sk)->icsk_pmtu_cookie > dst_mtu(dst)) {
   tcp_sync_mss(sk, dst_mtu(dst));
   tcp_simple_retransmit(sk);
  }
  dst_release(dst);
  goto out;
 }

 icmpv6_err_convert(type, code, &err);


 switch (sk->sk_state) {
  struct request_sock *req, **prev;
 case 130:
  if (sock_owned_by_user(sk))
   goto out;

  req = inet6_csk_search_req(sk, &prev, th->dest, &hdr->daddr,
        &hdr->saddr, inet6_iif(skb));
  if (!req)
   goto out;




  WARN_ON(req->sk != ((void*)0));

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
  } else
   sk->sk_err_soft = err;
  goto out;
 }

 if (!sock_owned_by_user(sk) && np->recverr) {
  sk->sk_err = err;
  sk->sk_error_report(sk);
 } else
  sk->sk_err_soft = err;

out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
