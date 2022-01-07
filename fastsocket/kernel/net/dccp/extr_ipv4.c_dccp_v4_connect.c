
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_route_caps; int sk_bound_dev_if; } ;
struct TYPE_5__ {int dst; } ;
struct rtable {int rt_flags; scalar_t__ rt_dst; scalar_t__ rt_src; TYPE_2__ u; } ;
struct ip_options {scalar_t__ faddr; scalar_t__ optlen; scalar_t__ srr; } ;
struct inet_sock {scalar_t__ saddr; scalar_t__ rcv_saddr; int id; scalar_t__ dport; int sport; scalar_t__ daddr; int opt; } ;
struct dccp_sock {int dccps_iss; int dccps_role; } ;
typedef scalar_t__ __be32 ;
struct TYPE_6__ {scalar_t__ icsk_ext_hdr_len; } ;


 scalar_t__ AF_INET ;
 int DCCP_CLOSED ;
 int DCCP_REQUESTING ;
 int DCCP_ROLE_CLIENT ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENETUNREACH ;
 int IPPROTO_DCCP ;
 int RTCF_BROADCAST ;
 int RTCF_MULTICAST ;
 int RT_CONN_FLAGS (struct sock*) ;
 int dccp_connect (struct sock*) ;
 int dccp_death_row ;
 int dccp_set_state (struct sock*,int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 TYPE_3__* inet_csk (struct sock*) ;
 int inet_hash_connect (int *,struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_route_connect (struct rtable**,scalar_t__,scalar_t__,int ,int ,int ,int ,scalar_t__,struct sock*,int) ;
 int ip_route_newports (struct rtable**,int ,int ,scalar_t__,struct sock*) ;
 int ip_rt_put (struct rtable*) ;
 int jiffies ;
 struct ip_options* rcu_dereference (int ) ;
 int secure_dccp_sequence_number (scalar_t__,scalar_t__,int ,scalar_t__) ;
 int sk_setup_caps (struct sock*,int *) ;

int dccp_v4_connect(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
 struct inet_sock *inet = inet_sk(sk);
 struct dccp_sock *dp = dccp_sk(sk);
 const struct sockaddr_in *usin = (struct sockaddr_in *)uaddr;
 struct rtable *rt;
 __be32 daddr, nexthop;
 int tmp;
 int err;
 struct ip_options *inet_opt;

 dp->dccps_role = DCCP_ROLE_CLIENT;

 if (addr_len < sizeof(struct sockaddr_in))
  return -EINVAL;

 if (usin->sin_family != AF_INET)
  return -EAFNOSUPPORT;

 nexthop = daddr = usin->sin_addr.s_addr;
 inet_opt = rcu_dereference(inet->opt);
 if (inet_opt != ((void*)0) && inet_opt->srr) {
  if (daddr == 0)
   return -EINVAL;
  nexthop = inet_opt->faddr;
 }

 tmp = ip_route_connect(&rt, nexthop, inet->saddr,
          RT_CONN_FLAGS(sk), sk->sk_bound_dev_if,
          IPPROTO_DCCP,
          inet->sport, usin->sin_port, sk, 1);
 if (tmp < 0)
  return tmp;

 if (rt->rt_flags & (RTCF_MULTICAST | RTCF_BROADCAST)) {
  ip_rt_put(rt);
  return -ENETUNREACH;
 }

 if (inet_opt == ((void*)0) || !inet_opt->srr)
  daddr = rt->rt_dst;

 if (inet->saddr == 0)
  inet->saddr = rt->rt_src;
 inet->rcv_saddr = inet->saddr;

 inet->dport = usin->sin_port;
 inet->daddr = daddr;

 inet_csk(sk)->icsk_ext_hdr_len = 0;
 if (inet_opt != ((void*)0))
  inet_csk(sk)->icsk_ext_hdr_len = inet_opt->optlen;






 dccp_set_state(sk, DCCP_REQUESTING);
 err = inet_hash_connect(&dccp_death_row, sk);
 if (err != 0)
  goto failure;

 err = ip_route_newports(&rt, IPPROTO_DCCP, inet->sport, inet->dport,
    sk);
 if (err != 0)
  goto failure;


 sk_setup_caps(sk, &rt->u.dst);

 dp->dccps_iss = secure_dccp_sequence_number(inet->saddr, inet->daddr,
          inet->sport, inet->dport);
 inet->id = dp->dccps_iss ^ jiffies;

 err = dccp_connect(sk);
 rt = ((void*)0);
 if (err != 0)
  goto failure;
out:
 return err;
failure:



 dccp_set_state(sk, DCCP_CLOSED);
 ip_rt_put(rt);
 sk->sk_route_caps = 0;
 inet->dport = 0;
 goto out;
}
