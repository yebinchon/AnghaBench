
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tcp_sock {int total_retrans; int advmss; int * af_specific; } ;
struct tcp_md5sig_key {int keylen; int key; } ;
struct tcp6_sock {int inet6; } ;
struct sock {int sk_bound_dev_if; int sk_gso_type; int sk_backlog_rcv; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct request_sock {int retrans; } ;
struct ipv6_txoptions {int tot_len; scalar_t__ opt_flen; scalar_t__ opt_nflen; scalar_t__ srcrt; } ;
struct in6_addr {int dummy; } ;
struct TYPE_8__ {int all; } ;
struct ipv6_pinfo {struct ipv6_txoptions* opt; struct in6_addr daddr; int mcast_hops; void* mcast_oif; int * pktoptions; TYPE_1__ rxopt; int * ipv6_fl_list; struct in6_addr rcv_saddr; struct in6_addr saddr; } ;
struct inet_sock {int rcv_saddr; int saddr; int daddr; int * opt; int * pinet6; } ;
struct inet6_request_sock {int * pktopts; int iif; struct in6_addr loc_addr; struct in6_addr rmt_addr; } ;
struct flowi {struct in6_addr fl6_dst; int fl_ip_sport; int fl_ip_dport; int oif; struct in6_addr fl6_src; int proto; } ;
struct dst_entry {int dummy; } ;
typedef int fl ;
struct TYPE_13__ {scalar_t__ icsk_ext_hdr_len; int icsk_pmtu_cookie; int * icsk_af_ops; } ;
struct TYPE_12__ {int loc_port; int rmt_port; } ;
struct TYPE_11__ {int hop_limit; } ;
struct TYPE_10__ {void* rcv_tos; } ;
struct TYPE_9__ {scalar_t__ snt_synack; } ;


 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int IPPROTO_TCP ;
 int LINUX_MIB_LISTENDROPS ;
 int LINUX_MIB_LISTENOVERFLOWS ;
 int LOOPBACK4_IPV6 ;
 int NET_INC_STATS_BH (int ,int ) ;
 int RTAX_ADVMSS ;
 int SKB_GSO_TCPV6 ;
 int __inet6_hash (struct sock*) ;
 scalar_t__ __inet_inherit_port (struct sock*,struct sock*) ;
 int __ip6_dst_store (struct sock*,struct dst_entry*,int *,int *) ;
 int dst_metric (struct dst_entry*,int ) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int htonl (int) ;
 scalar_t__ htons (int ) ;
 void* inet6_iif (struct sk_buff*) ;
 struct inet6_request_sock* inet6_rsk (struct request_sock*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 TYPE_7__* inet_csk (struct sock*) ;
 TYPE_6__* inet_rsk (struct request_sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ ip6_dst_lookup (struct sock*,struct dst_entry**,struct flowi*) ;
 int ipv6_addr_copy (struct in6_addr*,struct in6_addr*) ;
 int ipv6_addr_set (struct in6_addr*,int ,int ,int ,int ) ;
 struct ipv6_txoptions* ipv6_dup_options (struct sock*,struct ipv6_txoptions*) ;
 TYPE_4__* ipv6_hdr (struct sk_buff*) ;
 int ipv6_mapped ;
 void* ipv6_tclass (TYPE_4__*) ;
 int kfree_skb (int *) ;
 char* kmemdup (int ,int ,int ) ;
 int memcpy (struct ipv6_pinfo*,struct ipv6_pinfo*,int) ;
 int memset (struct flowi*,int ,int) ;
 int security_req_classify_flow (struct request_sock*,struct flowi*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 TYPE_3__* sk_extended (struct sock*) ;
 int * skb_clone (int *,int ) ;
 int skb_set_owner_r (int *,struct sock*) ;
 int sock_kfree_s (struct sock*,struct ipv6_txoptions*,int ) ;
 int sock_net (struct sock*) ;
 int sock_put (struct sock*) ;
 struct sock* tcp_create_openreq_child (struct sock*,struct request_sock*,struct sk_buff*) ;
 int tcp_initialize_rcv_mss (struct sock*) ;
 int tcp_mtup_init (struct sock*) ;
 TYPE_2__* tcp_rsk (struct request_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_sock_ipv6_mapped_specific ;
 int tcp_sync_mss (struct sock*,int ) ;
 scalar_t__ tcp_time_stamp ;
 int tcp_v4_do_rcv ;
 struct sock* tcp_v4_syn_recv_sock (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*) ;
 int tcp_v6_md5_do_add (struct sock*,struct in6_addr*,char*,int ) ;
 struct tcp_md5sig_key* tcp_v6_md5_do_lookup (struct sock*,struct in6_addr*) ;
 int tcp_valid_rtt_meas (struct sock*,scalar_t__) ;
 scalar_t__ xfrm_lookup (int ,struct dst_entry**,struct flowi*,struct sock*,int ) ;

__attribute__((used)) static struct sock * tcp_v6_syn_recv_sock(struct sock *sk, struct sk_buff *skb,
       struct request_sock *req,
       struct dst_entry *dst)
{
 struct inet6_request_sock *treq;
 struct ipv6_pinfo *newnp, *np = inet6_sk(sk);
 struct tcp6_sock *newtcp6sk;
 struct inet_sock *newinet;
 struct tcp_sock *newtp;
 struct sock *newsk;
 struct ipv6_txoptions *opt;




 if (skb->protocol == htons(ETH_P_IP)) {




  newsk = tcp_v4_syn_recv_sock(sk, skb, req, dst);

  if (newsk == ((void*)0))
   return ((void*)0);

  newtcp6sk = (struct tcp6_sock *)newsk;
  inet_sk(newsk)->pinet6 = &newtcp6sk->inet6;

  newinet = inet_sk(newsk);
  newnp = inet6_sk(newsk);
  newtp = tcp_sk(newsk);

  memcpy(newnp, np, sizeof(struct ipv6_pinfo));

  ipv6_addr_set(&newnp->daddr, 0, 0, htonl(0x0000FFFF),
         newinet->daddr);

  ipv6_addr_set(&newnp->saddr, 0, 0, htonl(0x0000FFFF),
         newinet->saddr);

  ipv6_addr_copy(&newnp->rcv_saddr, &newnp->saddr);

  inet_csk(newsk)->icsk_af_ops = &ipv6_mapped;
  newsk->sk_backlog_rcv = tcp_v4_do_rcv;




  newnp->pktoptions = ((void*)0);
  newnp->opt = ((void*)0);
  newnp->mcast_oif = inet6_iif(skb);
  newnp->mcast_hops = ipv6_hdr(skb)->hop_limit;
  sk_extended(newsk)->rcv_tos = ipv6_tclass(ipv6_hdr(skb));
  tcp_sync_mss(newsk, inet_csk(newsk)->icsk_pmtu_cookie);

  return newsk;
 }

 treq = inet6_rsk(req);
 opt = np->opt;

 if (sk_acceptq_is_full(sk))
  goto out_overflow;

 if (dst == ((void*)0)) {
  struct in6_addr *final_p = ((void*)0), final;
  struct flowi fl;

  memset(&fl, 0, sizeof(fl));
  fl.proto = IPPROTO_TCP;
  ipv6_addr_copy(&fl.fl6_dst, &treq->rmt_addr);
  if (opt && opt->srcrt) {
   struct rt0_hdr *rt0 = (struct rt0_hdr *) opt->srcrt;
   ipv6_addr_copy(&final, &fl.fl6_dst);
   ipv6_addr_copy(&fl.fl6_dst, rt0->addr);
   final_p = &final;
  }
  ipv6_addr_copy(&fl.fl6_src, &treq->loc_addr);
  fl.oif = sk->sk_bound_dev_if;
  fl.fl_ip_dport = inet_rsk(req)->rmt_port;
  fl.fl_ip_sport = inet_rsk(req)->loc_port;
  security_req_classify_flow(req, &fl);

  if (ip6_dst_lookup(sk, &dst, &fl))
   goto out;

  if (final_p)
   ipv6_addr_copy(&fl.fl6_dst, final_p);

  if ((xfrm_lookup(sock_net(sk), &dst, &fl, sk, 0)) < 0)
   goto out;
 }

 newsk = tcp_create_openreq_child(sk, req, skb);
 if (newsk == ((void*)0))
  goto out_nonewsk;







 newsk->sk_gso_type = SKB_GSO_TCPV6;
 __ip6_dst_store(newsk, dst, ((void*)0), ((void*)0));

 newtcp6sk = (struct tcp6_sock *)newsk;
 inet_sk(newsk)->pinet6 = &newtcp6sk->inet6;

 newtp = tcp_sk(newsk);
 newinet = inet_sk(newsk);
 newnp = inet6_sk(newsk);

 memcpy(newnp, np, sizeof(struct ipv6_pinfo));

 ipv6_addr_copy(&newnp->daddr, &treq->rmt_addr);
 ipv6_addr_copy(&newnp->saddr, &treq->loc_addr);
 ipv6_addr_copy(&newnp->rcv_saddr, &treq->loc_addr);
 newsk->sk_bound_dev_if = treq->iif;





 newinet->opt = ((void*)0);
 newnp->ipv6_fl_list = ((void*)0);


 newnp->rxopt.all = np->rxopt.all;


 newnp->pktoptions = ((void*)0);
 if (treq->pktopts != ((void*)0)) {
  newnp->pktoptions = skb_clone(treq->pktopts, GFP_ATOMIC);
  kfree_skb(treq->pktopts);
  treq->pktopts = ((void*)0);
  if (newnp->pktoptions)
   skb_set_owner_r(newnp->pktoptions, newsk);
 }
 newnp->opt = ((void*)0);
 newnp->mcast_oif = inet6_iif(skb);
 newnp->mcast_hops = ipv6_hdr(skb)->hop_limit;
 sk_extended(newsk)->rcv_tos = ipv6_tclass(ipv6_hdr(skb));







 if (opt) {
  newnp->opt = ipv6_dup_options(newsk, opt);
  if (opt != np->opt)
   sock_kfree_s(sk, opt, opt->tot_len);
 }

 inet_csk(newsk)->icsk_ext_hdr_len = 0;
 if (newnp->opt)
  inet_csk(newsk)->icsk_ext_hdr_len = (newnp->opt->opt_nflen +
           newnp->opt->opt_flen);

 tcp_mtup_init(newsk);
 tcp_sync_mss(newsk, dst_mtu(dst));
 newtp->advmss = dst_metric(dst, RTAX_ADVMSS);
 tcp_initialize_rcv_mss(newsk);
 if (tcp_rsk(req)->snt_synack)
  tcp_valid_rtt_meas(newsk,
      tcp_time_stamp - tcp_rsk(req)->snt_synack);
 newtp->total_retrans = req->retrans;

 newinet->daddr = newinet->saddr = newinet->rcv_saddr = LOOPBACK4_IPV6;
 if (__inet_inherit_port(sk, newsk) < 0) {
  sock_put(newsk);
  goto out;
 }
 __inet6_hash(newsk);

 return newsk;

out_overflow:
 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_LISTENOVERFLOWS);
out_nonewsk:
 if (opt && opt != np->opt)
  sock_kfree_s(sk, opt, opt->tot_len);
 dst_release(dst);
out:
 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_LISTENDROPS);
 return ((void*)0);
}
