
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {int sk_route_caps; int sk_bound_dev_if; int sk_backlog_rcv; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {int tot_len; scalar_t__ opt_flen; scalar_t__ opt_nflen; int * srcrt; } ;
struct TYPE_6__ {int all; } ;
struct in6_addr {int dummy; } ;
struct ipv6_pinfo {struct ipv6_txoptions* opt; int mcast_hops; void* mcast_oif; int * pktoptions; TYPE_1__ rxopt; struct in6_addr rcv_saddr; struct in6_addr saddr; struct in6_addr daddr; } ;
struct inet_sock {int rcv_saddr; int saddr; int daddr; int * opt; int * pinet6; } ;
struct inet6_request_sock {int * pktopts; int iif; struct in6_addr loc_addr; struct in6_addr rmt_addr; } ;
struct flowi {struct in6_addr fl6_dst; int fl_ip_sport; int fl_ip_dport; int oif; struct in6_addr fl6_src; int proto; } ;
struct dst_entry {TYPE_2__* dev; } ;
struct dccp_sock {int dummy; } ;
struct dccp6_sock {int inet6; } ;
typedef int fl ;
struct TYPE_10__ {scalar_t__ icsk_ext_hdr_len; int icsk_pmtu_cookie; int * icsk_af_ops; } ;
struct TYPE_9__ {int loc_port; int rmt_port; } ;
struct TYPE_8__ {int hop_limit; } ;
struct TYPE_7__ {int features; } ;


 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int IPPROTO_DCCP ;
 int LINUX_MIB_LISTENDROPS ;
 int LINUX_MIB_LISTENOVERFLOWS ;
 int LOOPBACK4_IPV6 ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_TSO ;
 int NET_INC_STATS_BH (int ,int ) ;
 int __inet6_hash (struct sock*) ;
 scalar_t__ __inet_inherit_port (struct sock*,struct sock*) ;
 int __ip6_dst_store (struct sock*,struct dst_entry*,int *,int *) ;
 struct sock* dccp_create_openreq_child (struct sock*,struct request_sock*,struct sk_buff*) ;
 int dccp_ipv6_mapped ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_sync_mss (struct sock*,int ) ;
 int dccp_v4_do_rcv ;
 struct sock* dccp_v4_request_recv_sock (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int htonl (int) ;
 scalar_t__ htons (int ) ;
 void* inet6_iif (struct sk_buff*) ;
 struct inet6_request_sock* inet6_rsk (struct request_sock*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 TYPE_5__* inet_csk (struct sock*) ;
 TYPE_4__* inet_rsk (struct request_sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ ip6_dst_lookup (struct sock*,struct dst_entry**,struct flowi*) ;
 int ipv6_addr_copy (struct in6_addr*,struct in6_addr*) ;
 int ipv6_addr_set (struct in6_addr*,int ,int ,int ,int ) ;
 struct ipv6_txoptions* ipv6_dup_options (struct sock*,struct ipv6_txoptions*) ;
 TYPE_3__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (int *) ;
 int memcpy (struct ipv6_pinfo*,struct ipv6_pinfo*,int) ;
 int memset (struct flowi*,int ,int) ;
 int security_sk_classify_flow (struct sock*,struct flowi*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 int * skb_clone (int *,int ) ;
 int skb_set_owner_r (int *,struct sock*) ;
 int sock_kfree_s (struct sock*,struct ipv6_txoptions*,int ) ;
 int sock_net (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ xfrm_lookup (int ,struct dst_entry**,struct flowi*,struct sock*,int ) ;

__attribute__((used)) static struct sock *dccp_v6_request_recv_sock(struct sock *sk,
           struct sk_buff *skb,
           struct request_sock *req,
           struct dst_entry *dst)
{
 struct inet6_request_sock *ireq6 = inet6_rsk(req);
 struct ipv6_pinfo *newnp, *np = inet6_sk(sk);
 struct inet_sock *newinet;
 struct dccp_sock *newdp;
 struct dccp6_sock *newdp6;
 struct sock *newsk;
 struct ipv6_txoptions *opt;

 if (skb->protocol == htons(ETH_P_IP)) {



  newsk = dccp_v4_request_recv_sock(sk, skb, req, dst);
  if (newsk == ((void*)0))
   return ((void*)0);

  newdp6 = (struct dccp6_sock *)newsk;
  newdp = dccp_sk(newsk);
  newinet = inet_sk(newsk);
  newinet->pinet6 = &newdp6->inet6;
  newnp = inet6_sk(newsk);

  memcpy(newnp, np, sizeof(struct ipv6_pinfo));

  ipv6_addr_set(&newnp->daddr, 0, 0, htonl(0x0000FFFF),
         newinet->daddr);

  ipv6_addr_set(&newnp->saddr, 0, 0, htonl(0x0000FFFF),
         newinet->saddr);

  ipv6_addr_copy(&newnp->rcv_saddr, &newnp->saddr);

  inet_csk(newsk)->icsk_af_ops = &dccp_ipv6_mapped;
  newsk->sk_backlog_rcv = dccp_v4_do_rcv;
  newnp->pktoptions = ((void*)0);
  newnp->opt = ((void*)0);
  newnp->mcast_oif = inet6_iif(skb);
  newnp->mcast_hops = ipv6_hdr(skb)->hop_limit;
  dccp_sync_mss(newsk, inet_csk(newsk)->icsk_pmtu_cookie);

  return newsk;
 }

 opt = np->opt;

 if (sk_acceptq_is_full(sk))
  goto out_overflow;

 if (dst == ((void*)0)) {
  struct in6_addr *final_p = ((void*)0), final;
  struct flowi fl;

  memset(&fl, 0, sizeof(fl));
  fl.proto = IPPROTO_DCCP;
  ipv6_addr_copy(&fl.fl6_dst, &ireq6->rmt_addr);
  if (opt != ((void*)0) && opt->srcrt != ((void*)0)) {
   const struct rt0_hdr *rt0 = (struct rt0_hdr *)opt->srcrt;

   ipv6_addr_copy(&final, &fl.fl6_dst);
   ipv6_addr_copy(&fl.fl6_dst, rt0->addr);
   final_p = &final;
  }
  ipv6_addr_copy(&fl.fl6_src, &ireq6->loc_addr);
  fl.oif = sk->sk_bound_dev_if;
  fl.fl_ip_dport = inet_rsk(req)->rmt_port;
  fl.fl_ip_sport = inet_rsk(req)->loc_port;
  security_sk_classify_flow(sk, &fl);

  if (ip6_dst_lookup(sk, &dst, &fl))
   goto out;

  if (final_p)
   ipv6_addr_copy(&fl.fl6_dst, final_p);

  if ((xfrm_lookup(sock_net(sk), &dst, &fl, sk, 0)) < 0)
   goto out;
 }

 newsk = dccp_create_openreq_child(sk, req, skb);
 if (newsk == ((void*)0))
  goto out_nonewsk;







 __ip6_dst_store(newsk, dst, ((void*)0), ((void*)0));
 newsk->sk_route_caps = dst->dev->features & ~(NETIF_F_IP_CSUM |
            NETIF_F_TSO);
 newdp6 = (struct dccp6_sock *)newsk;
 newinet = inet_sk(newsk);
 newinet->pinet6 = &newdp6->inet6;
 newdp = dccp_sk(newsk);
 newnp = inet6_sk(newsk);

 memcpy(newnp, np, sizeof(struct ipv6_pinfo));

 ipv6_addr_copy(&newnp->daddr, &ireq6->rmt_addr);
 ipv6_addr_copy(&newnp->saddr, &ireq6->loc_addr);
 ipv6_addr_copy(&newnp->rcv_saddr, &ireq6->loc_addr);
 newsk->sk_bound_dev_if = ireq6->iif;





 newinet->opt = ((void*)0);


 newnp->rxopt.all = np->rxopt.all;


 newnp->pktoptions = ((void*)0);
 if (ireq6->pktopts != ((void*)0)) {
  newnp->pktoptions = skb_clone(ireq6->pktopts, GFP_ATOMIC);
  kfree_skb(ireq6->pktopts);
  ireq6->pktopts = ((void*)0);
  if (newnp->pktoptions)
   skb_set_owner_r(newnp->pktoptions, newsk);
 }
 newnp->opt = ((void*)0);
 newnp->mcast_oif = inet6_iif(skb);
 newnp->mcast_hops = ipv6_hdr(skb)->hop_limit;







 if (opt != ((void*)0)) {
  newnp->opt = ipv6_dup_options(newsk, opt);
  if (opt != np->opt)
   sock_kfree_s(sk, opt, opt->tot_len);
 }

 inet_csk(newsk)->icsk_ext_hdr_len = 0;
 if (newnp->opt != ((void*)0))
  inet_csk(newsk)->icsk_ext_hdr_len = (newnp->opt->opt_nflen +
           newnp->opt->opt_flen);

 dccp_sync_mss(newsk, dst_mtu(dst));

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
 dst_release(dst);
out:
 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_LISTENDROPS);
 if (opt != ((void*)0) && opt != np->opt)
  sock_kfree_s(sk, opt, opt->tot_len);
 return ((void*)0);
}
