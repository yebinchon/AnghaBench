
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct sock {int sk_state; int sk_err; int sk_err_soft; int (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {scalar_t__ const data; scalar_t__ const len; int dev; } ;
struct request_sock {int sk; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int saddr; int daddr; } ;
struct inet_sock {scalar_t__ recverr; } ;
struct dccp_sock {int dccps_awh; int dccps_awl; } ;
struct dccp_hdr {int dccph_dport; int dccph_sport; } ;
typedef int __u64 ;
struct TYPE_6__ {int dreq_iss; } ;
struct TYPE_5__ {int errno; } ;
struct TYPE_4__ {int type; int code; } ;


 int DCCPF_LISTEN ;
 int DCCPF_REQUESTING ;
 int DCCP_CLOSED ;
 int DCCP_INC_STATS_BH (int ) ;

 int DCCP_MIB_ATTEMPTFAILS ;


 int DCCP_TIME_WAIT ;
 int EHOSTUNREACH ;
 int EPROTO ;

 int const ICMP_FRAG_NEEDED ;
 int ICMP_INC_STATS_BH (struct net*,int ) ;
 int ICMP_MIB_INERRORS ;



 int LINUX_MIB_LOCKDROPPEDICMPS ;
 int LINUX_MIB_OUTOFWINDOWICMPS ;
 int NET_INC_STATS_BH (struct net*,int ) ;
 int const NR_ICMP_UNREACH ;
 int WARN_ON (int ) ;
 scalar_t__ const __dccp_basic_hdr_len (struct dccp_hdr const*) ;
 int between48 (int ,int ,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int dccp_do_pmtu_discovery (struct sock*,struct iphdr const*,int ) ;
 int dccp_done (struct sock*) ;
 int dccp_hashinfo ;
 int dccp_hdr_seq (struct dccp_hdr const*) ;
 TYPE_3__* dccp_rsk (struct request_sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 struct net* dev_net (int ) ;
 TYPE_2__* icmp_err_convert ;
 TYPE_1__* icmp_hdr (struct sk_buff*) ;
 int inet_csk_reqsk_queue_drop (struct sock*,struct request_sock*,struct request_sock**) ;
 struct request_sock* inet_csk_search_req (struct sock*,struct request_sock***,int ,int ,int ) ;
 int inet_iif (struct sk_buff*) ;
 struct sock* inet_lookup (struct net*,int *,int ,int ,int ,int ,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static void dccp_v4_err(struct sk_buff *skb, u32 info)
{
 const struct iphdr *iph = (struct iphdr *)skb->data;
 const u8 offset = iph->ihl << 2;
 const struct dccp_hdr *dh = (struct dccp_hdr *)(skb->data + offset);
 struct dccp_sock *dp;
 struct inet_sock *inet;
 const int type = icmp_hdr(skb)->type;
 const int code = icmp_hdr(skb)->code;
 struct sock *sk;
 __u64 seq;
 int err;
 struct net *net = dev_net(skb->dev);

 if (skb->len < offset + sizeof(*dh) ||
     skb->len < offset + __dccp_basic_hdr_len(dh)) {
  ICMP_INC_STATS_BH(net, ICMP_MIB_INERRORS);
  return;
 }

 sk = inet_lookup(net, &dccp_hashinfo,
   iph->daddr, dh->dccph_dport,
   iph->saddr, dh->dccph_sport, inet_iif(skb));
 if (sk == ((void*)0)) {
  ICMP_INC_STATS_BH(net, ICMP_MIB_INERRORS);
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

 switch (type) {
 case 129:

  goto out;
 case 130:
  err = EPROTO;
  break;
 case 131:
  if (code > NR_ICMP_UNREACH)
   goto out;

  if (code == ICMP_FRAG_NEEDED) {
   if (!sock_owned_by_user(sk))
    dccp_do_pmtu_discovery(sk, iph, info);
   goto out;
  }

  err = icmp_err_convert[code].errno;
  break;
 case 128:
  err = EHOSTUNREACH;
  break;
 default:
  goto out;
 }

 switch (sk->sk_state) {
  struct request_sock *req , **prev;
 case 134:
  if (sock_owned_by_user(sk))
   goto out;
  req = inet_csk_search_req(sk, &prev, dh->dccph_dport,
       iph->daddr, iph->saddr);
  if (!req)
   goto out;





  WARN_ON(req->sk);

  if (seq != dccp_rsk(req)->dreq_iss) {
   NET_INC_STATS_BH(net, LINUX_MIB_OUTOFWINDOWICMPS);
   goto out;
  }






  inet_csk_reqsk_queue_drop(sk, req, prev);
  goto out;

 case 133:
 case 132:
  if (!sock_owned_by_user(sk)) {
   DCCP_INC_STATS_BH(DCCP_MIB_ATTEMPTFAILS);
   sk->sk_err = err;

   sk->sk_error_report(sk);

   dccp_done(sk);
  } else
   sk->sk_err_soft = err;
  goto out;
 }
 inet = inet_sk(sk);
 if (!sock_owned_by_user(sk) && inet->recverr) {
  sk->sk_err = err;
  sk->sk_error_report(sk);
 } else
  sk->sk_err_soft = err;
out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
