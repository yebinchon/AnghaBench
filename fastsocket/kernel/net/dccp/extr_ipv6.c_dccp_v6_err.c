
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {int sk_state; int sk_err_soft; int sk_err; int (* sk_error_report ) (struct sock*) ;int sk_bound_dev_if; } ;
struct sk_buff {int len; int dev; scalar_t__ data; } ;
struct request_sock {int * sk; } ;
struct net {int dummy; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct ipv6_pinfo {scalar_t__ recverr; int saddr; int daddr; int dst_cookie; } ;
struct inet_sock {int sport; int dport; } ;
struct inet6_skb_parm {int dummy; } ;
struct flowi {int fl_ip_sport; int fl_ip_dport; int oif; int fl6_src; int fl6_dst; int proto; } ;
struct dst_entry {int dummy; } ;
struct dccp_sock {int dccps_awh; int dccps_awl; } ;
struct dccp_hdr {int dccph_dport; int dccph_sport; } ;
typedef int fl ;
typedef int __u64 ;
typedef int __be32 ;
struct TYPE_4__ {int dreq_iss; } ;
struct TYPE_3__ {scalar_t__ icsk_pmtu_cookie; } ;


 int DCCPF_CLOSED ;
 int DCCPF_LISTEN ;
 int DCCPF_REQUESTING ;
 int DCCP_CLOSED ;
 int DCCP_INC_STATS_BH (int ) ;

 int DCCP_MIB_ATTEMPTFAILS ;


 int DCCP_TIME_WAIT ;
 int ICMP6_INC_STATS_BH (struct net*,int ,int ) ;
 int ICMP6_MIB_INERRORS ;
 scalar_t__ ICMPV6_PKT_TOOBIG ;
 int IPPROTO_DCCP ;
 int LINUX_MIB_LOCKDROPPEDICMPS ;
 int LINUX_MIB_OUTOFWINDOWICMPS ;
 int NET_INC_STATS_BH (struct net*,int ) ;
 int WARN_ON (int ) ;
 int __dccp_basic_hdr_len (struct dccp_hdr const*) ;
 int __in6_dev_get (int ) ;
 struct dst_entry* __sk_dst_check (struct sock*,int ) ;
 int between48 (int ,int ,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int dccp_done (struct sock*) ;
 int dccp_hashinfo ;
 int dccp_hdr_seq (struct dccp_hdr const*) ;
 TYPE_2__* dccp_rsk (struct request_sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_sync_mss (struct sock*,scalar_t__) ;
 struct net* dev_net (int ) ;
 int dst_hold (struct dst_entry*) ;
 scalar_t__ dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int icmpv6_err_convert (scalar_t__,scalar_t__,int*) ;
 struct request_sock* inet6_csk_search_req (struct sock*,struct request_sock***,int ,int *,int *,int ) ;
 int inet6_iif (struct sk_buff*) ;
 struct sock* inet6_lookup (struct net*,int *,int *,int ,int *,int ,int ) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int inet_csk_reqsk_queue_drop (struct sock*,struct request_sock*,struct request_sock**) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 int ip6_dst_lookup (struct sock*,struct dst_entry**,struct flowi*) ;
 int ipv6_addr_copy (int *,int *) ;
 int memset (struct flowi*,int ,int) ;
 int security_sk_classify_flow (struct sock*,struct flowi*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int xfrm_lookup (struct net*,struct dst_entry**,struct flowi*,struct sock*,int ) ;

__attribute__((used)) static void dccp_v6_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
   u8 type, u8 code, int offset, __be32 info)
{
 struct ipv6hdr *hdr = (struct ipv6hdr *)skb->data;
 const struct dccp_hdr *dh = (struct dccp_hdr *)(skb->data + offset);
 struct dccp_sock *dp;
 struct ipv6_pinfo *np;
 struct sock *sk;
 int err;
 __u64 seq;
 struct net *net = dev_net(skb->dev);

 if (skb->len < offset + sizeof(*dh) ||
     skb->len < offset + __dccp_basic_hdr_len(dh)) {
  ICMP6_INC_STATS_BH(net, __in6_dev_get(skb->dev),
       ICMP6_MIB_INERRORS);
  return;
 }

 sk = inet6_lookup(net, &dccp_hashinfo,
   &hdr->daddr, dh->dccph_dport,
   &hdr->saddr, dh->dccph_sport, inet6_iif(skb));

 if (sk == ((void*)0)) {
  ICMP6_INC_STATS_BH(net, __in6_dev_get(skb->dev),
       ICMP6_MIB_INERRORS);
  return;
 }

 if (sk->sk_state == DCCP_TIME_WAIT) {
  inet_twsk_put(inet_twsk(sk));
  return;
 }

 bh_lock_sock(sk);
 if (sock_owned_by_user(sk))
  NET_INC_STATS_BH(net, LINUX_MIB_LOCKDROPPEDICMPS);

 if (sk->sk_state == DCCP_CLOSED)
  goto out;

 dp = dccp_sk(sk);
 seq = dccp_hdr_seq(dh);
 if ((1 << sk->sk_state) & ~(DCCPF_REQUESTING | DCCPF_LISTEN) &&
     !between48(seq, dp->dccps_awl, dp->dccps_awh)) {
  NET_INC_STATS_BH(net, LINUX_MIB_OUTOFWINDOWICMPS);
  goto out;
 }

 np = inet6_sk(sk);

 if (type == ICMPV6_PKT_TOOBIG) {
  struct dst_entry *dst = ((void*)0);

  if (sock_owned_by_user(sk))
   goto out;
  if ((1 << sk->sk_state) & (DCCPF_LISTEN | DCCPF_CLOSED))
   goto out;


  dst = __sk_dst_check(sk, np->dst_cookie);
  if (dst == ((void*)0)) {
   struct inet_sock *inet = inet_sk(sk);
   struct flowi fl;





   memset(&fl, 0, sizeof(fl));
   fl.proto = IPPROTO_DCCP;
   ipv6_addr_copy(&fl.fl6_dst, &np->daddr);
   ipv6_addr_copy(&fl.fl6_src, &np->saddr);
   fl.oif = sk->sk_bound_dev_if;
   fl.fl_ip_dport = inet->dport;
   fl.fl_ip_sport = inet->sport;
   security_sk_classify_flow(sk, &fl);

   err = ip6_dst_lookup(sk, &dst, &fl);
   if (err) {
    sk->sk_err_soft = -err;
    goto out;
   }

   err = xfrm_lookup(net, &dst, &fl, sk, 0);
   if (err < 0) {
    sk->sk_err_soft = -err;
    goto out;
   }
  } else
   dst_hold(dst);

  if (inet_csk(sk)->icsk_pmtu_cookie > dst_mtu(dst)) {
   dccp_sync_mss(sk, dst_mtu(dst));
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

  req = inet6_csk_search_req(sk, &prev, dh->dccph_dport,
        &hdr->daddr, &hdr->saddr,
        inet6_iif(skb));
  if (req == ((void*)0))
   goto out;





  WARN_ON(req->sk != ((void*)0));

  if (seq != dccp_rsk(req)->dreq_iss) {
   NET_INC_STATS_BH(net, LINUX_MIB_OUTOFWINDOWICMPS);
   goto out;
  }

  inet_csk_reqsk_queue_drop(sk, req, prev);
  goto out;

 case 129:
 case 128:

  if (!sock_owned_by_user(sk)) {
   DCCP_INC_STATS_BH(DCCP_MIB_ATTEMPTFAILS);
   sk->sk_err = err;




   sk->sk_error_report(sk);
   dccp_done(sk);
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
