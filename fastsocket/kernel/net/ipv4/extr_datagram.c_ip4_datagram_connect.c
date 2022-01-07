
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_bound_dev_if; int sk_state; int sk_protocol; } ;
struct TYPE_4__ {int dst; } ;
struct rtable {int rt_flags; TYPE_2__ u; int rt_dst; scalar_t__ rt_src; } ;
struct inet_sock {int mc_index; int id; int dport; int daddr; scalar_t__ rcv_saddr; scalar_t__ saddr; int sport; scalar_t__ mc_addr; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ AF_INET ;
 int EACCES ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENETUNREACH ;
 int IPSTATS_MIB_OUTNOROUTES ;
 int IP_INC_STATS_BH (int ,int ) ;
 int RTCF_BROADCAST ;
 int RT_CONN_FLAGS (struct sock*) ;
 int SOCK_BROADCAST ;
 int TCP_ESTABLISHED ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_route_connect (struct rtable**,int ,scalar_t__,int ,int,int ,int ,int ,struct sock*,int) ;
 int ip_rt_put (struct rtable*) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 int jiffies ;
 int sk_dst_reset (struct sock*) ;
 int sk_dst_set (struct sock*,int *) ;
 int sock_flag (struct sock*,int ) ;
 int sock_net (struct sock*) ;

int ip4_datagram_connect(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
 struct inet_sock *inet = inet_sk(sk);
 struct sockaddr_in *usin = (struct sockaddr_in *) uaddr;
 struct rtable *rt;
 __be32 saddr;
 int oif;
 int err;


 if (addr_len < sizeof(*usin))
  return -EINVAL;

 if (usin->sin_family != AF_INET)
  return -EAFNOSUPPORT;

 sk_dst_reset(sk);

 oif = sk->sk_bound_dev_if;
 saddr = inet->saddr;
 if (ipv4_is_multicast(usin->sin_addr.s_addr)) {
  if (!oif)
   oif = inet->mc_index;
  if (!saddr)
   saddr = inet->mc_addr;
 }
 err = ip_route_connect(&rt, usin->sin_addr.s_addr, saddr,
          RT_CONN_FLAGS(sk), oif,
          sk->sk_protocol,
          inet->sport, usin->sin_port, sk, 1);
 if (err) {
  if (err == -ENETUNREACH)
   IP_INC_STATS_BH(sock_net(sk), IPSTATS_MIB_OUTNOROUTES);
  return err;
 }

 if ((rt->rt_flags & RTCF_BROADCAST) && !sock_flag(sk, SOCK_BROADCAST)) {
  ip_rt_put(rt);
  return -EACCES;
 }
 if (!inet->saddr)
  inet->saddr = rt->rt_src;
 if (!inet->rcv_saddr)
  inet->rcv_saddr = rt->rt_src;
 inet->daddr = rt->rt_dst;
 inet->dport = usin->sin_port;
 sk->sk_state = TCP_ESTABLISHED;
 inet->id = jiffies;

 sk_dst_set(sk, &rt->u.dst);
 return(0);
}
