
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tcp_opt ;
struct tcphdr {int seq; int dest; int source; int ack; int ack_seq; } ;
struct tcp_sock {scalar_t__ window_clamp; } ;
struct tcp_request_sock {void* snt_isn; void* rcv_isn; int snt_synack; } ;
struct in6_addr {int dummy; } ;
struct tcp_options_received {struct in6_addr fl6_dst; int fl_ip_sport; int fl_ip_dport; scalar_t__ oif; struct in6_addr fl6_src; int proto; int rcv_tsecr; scalar_t__ saw_tstamp; int rcv_tsval; int wscale_ok; int sack_ok; int rcv_wscale; int snd_wscale; } ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {int users; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct request_sock {int mss; unsigned long expires; int window_clamp; int rcv_wnd; int ts_recent; scalar_t__ retrans; } ;
struct TYPE_6__ {scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_7__ {TYPE_1__ bits; } ;
struct ipv6_pinfo {TYPE_3__* opt; TYPE_2__ rxopt; } ;
struct inet_request_sock {int rcv_wscale; int wscale_ok; int rmt_port; scalar_t__ tstamp_ok; int sack_ok; int snd_wscale; scalar_t__ ecn_ok; int loc_port; } ;
struct inet6_request_sock {struct in6_addr loc_addr; struct in6_addr rmt_addr; scalar_t__ iif; struct sk_buff* pktopts; } ;
struct flowi {struct in6_addr fl6_dst; int fl_ip_sport; int fl_ip_dport; scalar_t__ oif; struct in6_addr fl6_src; int proto; int rcv_tsecr; scalar_t__ saw_tstamp; int rcv_tsval; int wscale_ok; int sack_ok; int rcv_wscale; int snd_wscale; } ;
struct dst_entry {int dummy; } ;
typedef int fl ;
typedef int __u8 ;
typedef void* __u32 ;
struct TYPE_10__ {int sport; } ;
struct TYPE_9__ {struct in6_addr daddr; struct in6_addr saddr; } ;
struct TYPE_8__ {scalar_t__ srcrt; } ;


 int IPPROTO_TCP ;
 int IPV6_ADDR_LINKLOCAL ;
 int LINUX_MIB_SYNCOOKIESFAILED ;
 int LINUX_MIB_SYNCOOKIESRECV ;
 int NET_INC_STATS_BH (int ,int ) ;
 int RTAX_INITRWND ;
 int RTAX_WINDOW ;
 int atomic_inc (int *) ;
 int cookie_check (struct sk_buff*,void*) ;
 int cookie_check_timestamp (struct tcp_options_received*) ;
 int dst_metric (struct dst_entry*,int ) ;
 struct sock* get_cookie_sock (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*) ;
 scalar_t__ inet6_iif (struct sk_buff*) ;
 struct request_sock* inet6_reqsk_alloc (int *) ;
 struct inet6_request_sock* inet6_rsk (struct request_sock*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 TYPE_5__* inet_sk (struct sock*) ;
 scalar_t__ ip6_dst_lookup (struct sock*,struct dst_entry**,struct tcp_options_received*) ;
 int ipv6_addr_copy (struct in6_addr*,struct in6_addr*) ;
 int ipv6_addr_type (struct in6_addr*) ;
 TYPE_4__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ ipv6_opt_accepted (struct sock*,struct sk_buff*) ;
 int memset (struct tcp_options_received*,int ,int) ;
 void* ntohl (int ) ;
 int reqsk_free (struct request_sock*) ;
 scalar_t__ security_inet_conn_request (struct sock*,struct sk_buff*,struct request_sock*) ;
 int security_req_classify_flow (struct request_sock*,struct tcp_options_received*) ;
 int sock_net (struct sock*) ;
 int sysctl_tcp_syncookies ;
 int tcp6_request_sock_ops ;
 int tcp_full_space (struct sock*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 int tcp_parse_options (struct sk_buff*,struct tcp_options_received*,int ) ;
 struct tcp_request_sock* tcp_rsk (struct request_sock*) ;
 int tcp_select_initial_window (int ,int,int *,int *,int ,int *,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_synq_no_recent_overflow (struct sock*) ;
 scalar_t__ xfrm_lookup (int ,struct dst_entry**,struct tcp_options_received*,struct sock*,int ) ;

struct sock *cookie_v6_check(struct sock *sk, struct sk_buff *skb)
{
 struct inet_request_sock *ireq;
 struct inet6_request_sock *ireq6;
 struct tcp_request_sock *treq;
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 const struct tcphdr *th = tcp_hdr(skb);
 __u32 cookie = ntohl(th->ack_seq) - 1;
 struct sock *ret = sk;
 struct request_sock *req;
 int mss;
 struct dst_entry *dst;
 __u8 rcv_wscale;
 struct tcp_options_received tcp_opt;

 if (!sysctl_tcp_syncookies || !th->ack)
  goto out;

 if (tcp_synq_no_recent_overflow(sk) ||
  (mss = cookie_check(skb, cookie)) == 0) {
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_SYNCOOKIESFAILED);
  goto out;
 }

 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_SYNCOOKIESRECV);


 memset(&tcp_opt, 0, sizeof(tcp_opt));
 tcp_parse_options(skb, &tcp_opt, 0);

 if (tcp_opt.saw_tstamp)
  cookie_check_timestamp(&tcp_opt);

 ret = ((void*)0);
 req = inet6_reqsk_alloc(&tcp6_request_sock_ops);
 if (!req)
  goto out;

 ireq = inet_rsk(req);
 ireq6 = inet6_rsk(req);
 treq = tcp_rsk(req);

 if (security_inet_conn_request(sk, skb, req))
  goto out_free;

 req->mss = mss;
 ireq->rmt_port = th->source;
 ireq->loc_port = th->dest;
 ipv6_addr_copy(&ireq6->rmt_addr, &ipv6_hdr(skb)->saddr);
 ipv6_addr_copy(&ireq6->loc_addr, &ipv6_hdr(skb)->daddr);
 if (ipv6_opt_accepted(sk, skb) ||
     np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo ||
     np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim) {
  atomic_inc(&skb->users);
  ireq6->pktopts = skb;
 }

 ireq6->iif = sk->sk_bound_dev_if;

 if (!sk->sk_bound_dev_if &&
     ipv6_addr_type(&ireq6->rmt_addr) & IPV6_ADDR_LINKLOCAL)
  ireq6->iif = inet6_iif(skb);

 req->expires = 0UL;
 req->retrans = 0;
 ireq->ecn_ok = 0;
 ireq->snd_wscale = tcp_opt.snd_wscale;
 ireq->rcv_wscale = tcp_opt.rcv_wscale;
 ireq->sack_ok = tcp_opt.sack_ok;
 ireq->wscale_ok = tcp_opt.wscale_ok;
 ireq->tstamp_ok = tcp_opt.saw_tstamp;
 req->ts_recent = tcp_opt.saw_tstamp ? tcp_opt.rcv_tsval : 0;
 treq->snt_synack = tcp_opt.saw_tstamp ? tcp_opt.rcv_tsecr : 0;
 treq->rcv_isn = ntohl(th->seq) - 1;
 treq->snt_isn = cookie;






 {
  struct in6_addr *final_p = ((void*)0), final;
  struct flowi fl;
  memset(&fl, 0, sizeof(fl));
  fl.proto = IPPROTO_TCP;
  ipv6_addr_copy(&fl.fl6_dst, &ireq6->rmt_addr);
  if (np->opt && np->opt->srcrt) {
   struct rt0_hdr *rt0 = (struct rt0_hdr *) np->opt->srcrt;
   ipv6_addr_copy(&final, &fl.fl6_dst);
   ipv6_addr_copy(&fl.fl6_dst, rt0->addr);
   final_p = &final;
  }
  ipv6_addr_copy(&fl.fl6_src, &ireq6->loc_addr);
  fl.oif = sk->sk_bound_dev_if;
  fl.fl_ip_dport = inet_rsk(req)->rmt_port;
  fl.fl_ip_sport = inet_sk(sk)->sport;
  security_req_classify_flow(req, &fl);
  if (ip6_dst_lookup(sk, &dst, &fl))
   goto out_free;

  if (final_p)
   ipv6_addr_copy(&fl.fl6_dst, final_p);
  if ((xfrm_lookup(sock_net(sk), &dst, &fl, sk, 0)) < 0)
   goto out_free;
 }

 req->window_clamp = tp->window_clamp ? :dst_metric(dst, RTAX_WINDOW);
 tcp_select_initial_window(tcp_full_space(sk), req->mss,
      &req->rcv_wnd, &req->window_clamp,
      ireq->wscale_ok, &rcv_wscale,
      dst_metric(dst, RTAX_INITRWND));

 ireq->rcv_wscale = rcv_wscale;

 ret = get_cookie_sock(sk, skb, req, dst);
out:
 return ret;
out_free:
 reqsk_free(req);
 return ((void*)0);
}
