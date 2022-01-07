
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcphdr {int dummy; } ;
struct TYPE_5__ {int mss_clamp; scalar_t__ ts_recent_stamp; scalar_t__ ts_recent; } ;
struct tcp_sock {scalar_t__ write_seq; TYPE_2__ rx_opt; int * af_specific; } ;
struct in6_addr {int* s6_addr; int * s6_addr32; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; int sin6_flowinfo; scalar_t__ sin6_scope_id; scalar_t__ sin6_port; struct in6_addr sin6_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; scalar_t__ sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_bound_dev_if; scalar_t__ sk_route_caps; int sk_gso_type; int sk_backlog_rcv; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_pinfo {int flow_label; struct in6_addr daddr; struct in6_addr saddr; TYPE_1__* opt; struct in6_addr rcv_saddr; scalar_t__ sndflow; } ;
struct ip6_flowlabel {struct in6_addr dst; } ;
struct inet_sock {scalar_t__ dport; int sport; int rcv_saddr; int saddr; } ;
struct inet_connection_sock {scalar_t__ icsk_ext_hdr_len; int * icsk_af_ops; } ;
struct flowi {int fl6_flowlabel; scalar_t__ oif; struct in6_addr fl6_src; struct in6_addr fl6_dst; int fl_ip_sport; scalar_t__ fl_ip_dport; int proto; } ;
struct dst_entry {int dummy; } ;
typedef int sin ;
typedef int fl ;
struct TYPE_4__ {scalar_t__ opt_nflen; scalar_t__ opt_flen; scalar_t__ srcrt; } ;


 int AF_INET ;
 scalar_t__ AF_INET6 ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENETUNREACH ;
 int EREMOTE ;
 int IP6_ECN_flow_init (int) ;
 int IPPROTO_TCP ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_MAPPED ;
 int IPV6_ADDR_MULTICAST ;
 int IPV6_FLOWINFO_MASK ;
 int IPV6_FLOWLABEL_MASK ;
 int IPV6_MIN_MTU ;
 int LOOPBACK4_IPV6 ;
 int SIN6_LEN_RFC2133 ;
 int SKB_GSO_TCPV6 ;
 int SOCK_DEBUG (struct sock*,char*) ;
 int TCP_CLOSE ;
 int TCP_SYN_SENT ;
 int XFRM_LOOKUP_WAIT ;
 int __ip6_dst_store (struct sock*,struct dst_entry*,int *,int *) ;
 scalar_t__ __ipv6_only_sock (struct sock*) ;
 int __sk_dst_reset (struct sock*) ;
 int __xfrm_lookup (int ,struct dst_entry**,struct flowi*,struct sock*,int ) ;
 struct ip6_flowlabel* fl6_sock_lookup (struct sock*,int) ;
 int fl6_sock_release (struct ip6_flowlabel*) ;
 int htonl (int) ;
 int inet6_hash_connect (int *,struct sock*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip6_dst_blackhole (struct sock*,struct dst_entry**,struct flowi*) ;
 int ip6_dst_lookup (struct sock*,struct dst_entry**,struct flowi*) ;
 scalar_t__ ipv6_addr_any (struct in6_addr*) ;
 int ipv6_addr_copy (struct in6_addr*,struct in6_addr*) ;
 int ipv6_addr_equal (struct in6_addr*,struct in6_addr*) ;
 int ipv6_addr_set (struct in6_addr*,int ,int ,int ,int ) ;
 int ipv6_addr_type (struct in6_addr*) ;
 int ipv6_mapped ;
 int ipv6_specific ;
 int memset (struct flowi*,int ,int) ;
 scalar_t__ secure_tcpv6_sequence_number (int *,int *,int ,scalar_t__) ;
 int security_sk_classify_flow (struct sock*,struct flowi*) ;
 int sock_net (struct sock*) ;
 int tcp_connect (struct sock*) ;
 int tcp_death_row ;
 int tcp_set_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_sock_ipv6_mapped_specific ;
 int tcp_sock_ipv6_specific ;
 int tcp_v4_connect (struct sock*,struct sockaddr*,int) ;
 int tcp_v4_do_rcv ;
 int tcp_v6_do_rcv ;

__attribute__((used)) static int tcp_v6_connect(struct sock *sk, struct sockaddr *uaddr,
     int addr_len)
{
 struct sockaddr_in6 *usin = (struct sockaddr_in6 *) uaddr;
 struct inet_sock *inet = inet_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 struct in6_addr *saddr = ((void*)0), *final_p = ((void*)0), final;
 struct flowi fl;
 struct dst_entry *dst;
 int addr_type;
 int err;

 if (addr_len < SIN6_LEN_RFC2133)
  return -EINVAL;

 if (usin->sin6_family != AF_INET6)
  return(-EAFNOSUPPORT);

 memset(&fl, 0, sizeof(fl));

 if (np->sndflow) {
  fl.fl6_flowlabel = usin->sin6_flowinfo&IPV6_FLOWINFO_MASK;
  IP6_ECN_flow_init(fl.fl6_flowlabel);
  if (fl.fl6_flowlabel&IPV6_FLOWLABEL_MASK) {
   struct ip6_flowlabel *flowlabel;
   flowlabel = fl6_sock_lookup(sk, fl.fl6_flowlabel);
   if (flowlabel == ((void*)0))
    return -EINVAL;
   ipv6_addr_copy(&usin->sin6_addr, &flowlabel->dst);
   fl6_sock_release(flowlabel);
  }
 }





 if(ipv6_addr_any(&usin->sin6_addr))
  usin->sin6_addr.s6_addr[15] = 0x1;

 addr_type = ipv6_addr_type(&usin->sin6_addr);

 if(addr_type & IPV6_ADDR_MULTICAST)
  return -ENETUNREACH;

 if (addr_type&IPV6_ADDR_LINKLOCAL) {
  if (addr_len >= sizeof(struct sockaddr_in6) &&
      usin->sin6_scope_id) {



   if (sk->sk_bound_dev_if &&
       sk->sk_bound_dev_if != usin->sin6_scope_id)
    return -EINVAL;

   sk->sk_bound_dev_if = usin->sin6_scope_id;
  }


  if (!sk->sk_bound_dev_if)
   return -EINVAL;
 }

 if (tp->rx_opt.ts_recent_stamp &&
     !ipv6_addr_equal(&np->daddr, &usin->sin6_addr)) {
  tp->rx_opt.ts_recent = 0;
  tp->rx_opt.ts_recent_stamp = 0;
  tp->write_seq = 0;
 }

 ipv6_addr_copy(&np->daddr, &usin->sin6_addr);
 np->flow_label = fl.fl6_flowlabel;





 if (addr_type == IPV6_ADDR_MAPPED) {
  u32 exthdrlen = icsk->icsk_ext_hdr_len;
  struct sockaddr_in sin;

  SOCK_DEBUG(sk, "connect: ipv4 mapped\n");

  if (__ipv6_only_sock(sk))
   return -ENETUNREACH;

  sin.sin_family = AF_INET;
  sin.sin_port = usin->sin6_port;
  sin.sin_addr.s_addr = usin->sin6_addr.s6_addr32[3];

  icsk->icsk_af_ops = &ipv6_mapped;
  sk->sk_backlog_rcv = tcp_v4_do_rcv;




  err = tcp_v4_connect(sk, (struct sockaddr *)&sin, sizeof(sin));

  if (err) {
   icsk->icsk_ext_hdr_len = exthdrlen;
   icsk->icsk_af_ops = &ipv6_specific;
   sk->sk_backlog_rcv = tcp_v6_do_rcv;



   goto failure;
  } else {
   ipv6_addr_set(&np->saddr, 0, 0, htonl(0x0000FFFF),
          inet->saddr);
   ipv6_addr_set(&np->rcv_saddr, 0, 0, htonl(0x0000FFFF),
          inet->rcv_saddr);
  }

  return err;
 }

 if (!ipv6_addr_any(&np->rcv_saddr))
  saddr = &np->rcv_saddr;

 fl.proto = IPPROTO_TCP;
 ipv6_addr_copy(&fl.fl6_dst, &np->daddr);
 ipv6_addr_copy(&fl.fl6_src,
         (saddr ? saddr : &np->saddr));
 fl.oif = sk->sk_bound_dev_if;
 fl.fl_ip_dport = usin->sin6_port;
 fl.fl_ip_sport = inet->sport;

 if (np->opt && np->opt->srcrt) {
  struct rt0_hdr *rt0 = (struct rt0_hdr *)np->opt->srcrt;
  ipv6_addr_copy(&final, &fl.fl6_dst);
  ipv6_addr_copy(&fl.fl6_dst, rt0->addr);
  final_p = &final;
 }

 security_sk_classify_flow(sk, &fl);

 err = ip6_dst_lookup(sk, &dst, &fl);
 if (err)
  goto failure;
 if (final_p)
  ipv6_addr_copy(&fl.fl6_dst, final_p);

 err = __xfrm_lookup(sock_net(sk), &dst, &fl, sk, XFRM_LOOKUP_WAIT);
 if (err < 0) {
  if (err == -EREMOTE)
   err = ip6_dst_blackhole(sk, &dst, &fl);
  if (err < 0)
   goto failure;
 }

 if (saddr == ((void*)0)) {
  saddr = &fl.fl6_src;
  ipv6_addr_copy(&np->rcv_saddr, saddr);
 }


 ipv6_addr_copy(&np->saddr, saddr);
 inet->rcv_saddr = LOOPBACK4_IPV6;

 sk->sk_gso_type = SKB_GSO_TCPV6;
 __ip6_dst_store(sk, dst, ((void*)0), ((void*)0));

 icsk->icsk_ext_hdr_len = 0;
 if (np->opt)
  icsk->icsk_ext_hdr_len = (np->opt->opt_flen +
       np->opt->opt_nflen);

 tp->rx_opt.mss_clamp = IPV6_MIN_MTU - sizeof(struct tcphdr) - sizeof(struct ipv6hdr);

 inet->dport = usin->sin6_port;

 tcp_set_state(sk, TCP_SYN_SENT);
 err = inet6_hash_connect(&tcp_death_row, sk);
 if (err)
  goto late_failure;

 if (!tp->write_seq)
  tp->write_seq = secure_tcpv6_sequence_number(np->saddr.s6_addr32,
            np->daddr.s6_addr32,
            inet->sport,
            inet->dport);

 err = tcp_connect(sk);
 if (err)
  goto late_failure;

 return 0;

late_failure:
 tcp_set_state(sk, TCP_CLOSE);
 __sk_dst_reset(sk);
failure:
 inet->dport = 0;
 sk->sk_route_caps = 0;
 return err;
}
