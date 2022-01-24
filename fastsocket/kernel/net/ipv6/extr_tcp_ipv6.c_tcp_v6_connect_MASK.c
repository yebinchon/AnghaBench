#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tcphdr {int dummy; } ;
struct TYPE_5__ {int mss_clamp; scalar_t__ ts_recent_stamp; scalar_t__ ts_recent; } ;
struct tcp_sock {scalar_t__ write_seq; TYPE_2__ rx_opt; int /*<<< orphan*/ * af_specific; } ;
struct in6_addr {int* s6_addr; int /*<<< orphan*/ * s6_addr32; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; int sin6_flowinfo; scalar_t__ sin6_scope_id; scalar_t__ sin6_port; struct in6_addr sin6_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_bound_dev_if; scalar_t__ sk_route_caps; int /*<<< orphan*/  sk_gso_type; int /*<<< orphan*/  sk_backlog_rcv; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_pinfo {int flow_label; struct in6_addr daddr; struct in6_addr saddr; TYPE_1__* opt; struct in6_addr rcv_saddr; scalar_t__ sndflow; } ;
struct ip6_flowlabel {struct in6_addr dst; } ;
struct inet_sock {scalar_t__ dport; int /*<<< orphan*/  sport; int /*<<< orphan*/  rcv_saddr; int /*<<< orphan*/  saddr; } ;
struct inet_connection_sock {scalar_t__ icsk_ext_hdr_len; int /*<<< orphan*/ * icsk_af_ops; } ;
struct flowi {int fl6_flowlabel; scalar_t__ oif; struct in6_addr fl6_src; struct in6_addr fl6_dst; int /*<<< orphan*/  fl_ip_sport; scalar_t__ fl_ip_dport; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_4__ {scalar_t__ opt_nflen; scalar_t__ opt_flen; scalar_t__ srcrt; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int EREMOTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_MAPPED ; 
 int IPV6_ADDR_MULTICAST ; 
 int IPV6_FLOWINFO_MASK ; 
 int IPV6_FLOWLABEL_MASK ; 
 int IPV6_MIN_MTU ; 
 int /*<<< orphan*/  LOOPBACK4_IPV6 ; 
 int SIN6_LEN_RFC2133 ; 
 int /*<<< orphan*/  SKB_GSO_TCPV6 ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,char*) ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  TCP_SYN_SENT ; 
 int /*<<< orphan*/  XFRM_LOOKUP_WAIT ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct dst_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 
 struct ip6_flowlabel* FUNC6 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ip6_flowlabel*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct sock*) ; 
 struct ipv6_pinfo* FUNC10 (struct sock*) ; 
 struct inet_connection_sock* FUNC11 (struct sock*) ; 
 struct inet_sock* FUNC12 (struct sock*) ; 
 int FUNC13 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int FUNC14 (struct sock*,struct dst_entry**,struct flowi*) ; 
 scalar_t__ FUNC15 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC16 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC17 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC18 (struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct in6_addr*) ; 
 int /*<<< orphan*/  ipv6_mapped ; 
 int /*<<< orphan*/  ipv6_specific ; 
 int /*<<< orphan*/  FUNC20 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*,struct flowi*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 int FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  tcp_death_row ; 
 int /*<<< orphan*/  FUNC25 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC26 (struct sock*) ; 
 int /*<<< orphan*/  tcp_sock_ipv6_mapped_specific ; 
 int /*<<< orphan*/  tcp_sock_ipv6_specific ; 
 int FUNC27 (struct sock*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  tcp_v4_do_rcv ; 
 int /*<<< orphan*/  tcp_v6_do_rcv ; 

__attribute__((used)) static int FUNC28(struct sock *sk, struct sockaddr *uaddr,
			  int addr_len)
{
	struct sockaddr_in6 *usin = (struct sockaddr_in6 *) uaddr;
	struct inet_sock *inet = FUNC12(sk);
	struct inet_connection_sock *icsk = FUNC11(sk);
	struct ipv6_pinfo *np = FUNC10(sk);
	struct tcp_sock *tp = FUNC26(sk);
	struct in6_addr *saddr = NULL, *final_p = NULL, final;
	struct flowi fl;
	struct dst_entry *dst;
	int addr_type;
	int err;

	if (addr_len < SIN6_LEN_RFC2133)
		return -EINVAL;

	if (usin->sin6_family != AF_INET6)
		return(-EAFNOSUPPORT);

	FUNC20(&fl, 0, sizeof(fl));

	if (np->sndflow) {
		fl.fl6_flowlabel = usin->sin6_flowinfo&IPV6_FLOWINFO_MASK;
		FUNC0(fl.fl6_flowlabel);
		if (fl.fl6_flowlabel&IPV6_FLOWLABEL_MASK) {
			struct ip6_flowlabel *flowlabel;
			flowlabel = FUNC6(sk, fl.fl6_flowlabel);
			if (flowlabel == NULL)
				return -EINVAL;
			FUNC16(&usin->sin6_addr, &flowlabel->dst);
			FUNC7(flowlabel);
		}
	}

	/*
	 *	connect() to INADDR_ANY means loopback (BSD'ism).
	 */

	if(FUNC15(&usin->sin6_addr))
		usin->sin6_addr.s6_addr[15] = 0x1;

	addr_type = FUNC19(&usin->sin6_addr);

	if(addr_type & IPV6_ADDR_MULTICAST)
		return -ENETUNREACH;

	if (addr_type&IPV6_ADDR_LINKLOCAL) {
		if (addr_len >= sizeof(struct sockaddr_in6) &&
		    usin->sin6_scope_id) {
			/* If interface is set while binding, indices
			 * must coincide.
			 */
			if (sk->sk_bound_dev_if &&
			    sk->sk_bound_dev_if != usin->sin6_scope_id)
				return -EINVAL;

			sk->sk_bound_dev_if = usin->sin6_scope_id;
		}

		/* Connect to link-local address requires an interface */
		if (!sk->sk_bound_dev_if)
			return -EINVAL;
	}

	if (tp->rx_opt.ts_recent_stamp &&
	    !FUNC17(&np->daddr, &usin->sin6_addr)) {
		tp->rx_opt.ts_recent = 0;
		tp->rx_opt.ts_recent_stamp = 0;
		tp->write_seq = 0;
	}

	FUNC16(&np->daddr, &usin->sin6_addr);
	np->flow_label = fl.fl6_flowlabel;

	/*
	 *	TCP over IPv4
	 */

	if (addr_type == IPV6_ADDR_MAPPED) {
		u32 exthdrlen = icsk->icsk_ext_hdr_len;
		struct sockaddr_in sin;

		FUNC1(sk, "connect: ipv4 mapped\n");

		if (FUNC3(sk))
			return -ENETUNREACH;

		sin.sin_family = AF_INET;
		sin.sin_port = usin->sin6_port;
		sin.sin_addr.s_addr = usin->sin6_addr.s6_addr32[3];

		icsk->icsk_af_ops = &ipv6_mapped;
		sk->sk_backlog_rcv = tcp_v4_do_rcv;
#ifdef CONFIG_TCP_MD5SIG
		tp->af_specific = &tcp_sock_ipv6_mapped_specific;
#endif

		err = FUNC27(sk, (struct sockaddr *)&sin, sizeof(sin));

		if (err) {
			icsk->icsk_ext_hdr_len = exthdrlen;
			icsk->icsk_af_ops = &ipv6_specific;
			sk->sk_backlog_rcv = tcp_v6_do_rcv;
#ifdef CONFIG_TCP_MD5SIG
			tp->af_specific = &tcp_sock_ipv6_specific;
#endif
			goto failure;
		} else {
			FUNC18(&np->saddr, 0, 0, FUNC8(0x0000FFFF),
				      inet->saddr);
			FUNC18(&np->rcv_saddr, 0, 0, FUNC8(0x0000FFFF),
				      inet->rcv_saddr);
		}

		return err;
	}

	if (!FUNC15(&np->rcv_saddr))
		saddr = &np->rcv_saddr;

	fl.proto = IPPROTO_TCP;
	FUNC16(&fl.fl6_dst, &np->daddr);
	FUNC16(&fl.fl6_src,
		       (saddr ? saddr : &np->saddr));
	fl.oif = sk->sk_bound_dev_if;
	fl.fl_ip_dport = usin->sin6_port;
	fl.fl_ip_sport = inet->sport;

	if (np->opt && np->opt->srcrt) {
		struct rt0_hdr *rt0 = (struct rt0_hdr *)np->opt->srcrt;
		FUNC16(&final, &fl.fl6_dst);
		FUNC16(&fl.fl6_dst, rt0->addr);
		final_p = &final;
	}

	FUNC22(sk, &fl);

	err = FUNC14(sk, &dst, &fl);
	if (err)
		goto failure;
	if (final_p)
		FUNC16(&fl.fl6_dst, final_p);

	err = FUNC5(FUNC23(sk), &dst, &fl, sk, XFRM_LOOKUP_WAIT);
	if (err < 0) {
		if (err == -EREMOTE)
			err = FUNC13(sk, &dst, &fl);
		if (err < 0)
			goto failure;
	}

	if (saddr == NULL) {
		saddr = &fl.fl6_src;
		FUNC16(&np->rcv_saddr, saddr);
	}

	/* set the source address */
	FUNC16(&np->saddr, saddr);
	inet->rcv_saddr = LOOPBACK4_IPV6;

	sk->sk_gso_type = SKB_GSO_TCPV6;
	FUNC2(sk, dst, NULL, NULL);

	icsk->icsk_ext_hdr_len = 0;
	if (np->opt)
		icsk->icsk_ext_hdr_len = (np->opt->opt_flen +
					  np->opt->opt_nflen);

	tp->rx_opt.mss_clamp = IPV6_MIN_MTU - sizeof(struct tcphdr) - sizeof(struct ipv6hdr);

	inet->dport = usin->sin6_port;

	FUNC25(sk, TCP_SYN_SENT);
	err = FUNC9(&tcp_death_row, sk);
	if (err)
		goto late_failure;

	if (!tp->write_seq)
		tp->write_seq = FUNC21(np->saddr.s6_addr32,
							     np->daddr.s6_addr32,
							     inet->sport,
							     inet->dport);

	err = FUNC24(sk);
	if (err)
		goto late_failure;

	return 0;

late_failure:
	FUNC25(sk, TCP_CLOSE);
	FUNC4(sk);
failure:
	inet->dport = 0;
	sk->sk_route_caps = 0;
	return err;
}