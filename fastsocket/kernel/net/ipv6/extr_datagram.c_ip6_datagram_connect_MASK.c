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
struct in6_addr {int* s6_addr; int /*<<< orphan*/ * s6_addr32; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; int sin6_flowinfo; scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_port; struct in6_addr sin6_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_3__ sin_addr; scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_bound_dev_if; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_protocol; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct ipv6_pinfo {scalar_t__ mcast_oif; int flow_label; struct in6_addr saddr; struct in6_addr daddr; struct in6_addr rcv_saddr; TYPE_2__* opt; scalar_t__ sndflow; } ;
struct ip6_flowlabel {TYPE_1__* opt; struct in6_addr dst; } ;
struct inet_sock {int /*<<< orphan*/  rcv_saddr; int /*<<< orphan*/  sport; int /*<<< orphan*/  dport; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct flowi {int fl6_flowlabel; scalar_t__ oif; struct in6_addr fl6_src; struct in6_addr fl6_dst; int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_5__ {scalar_t__ srcrt; } ;
struct TYPE_4__ {scalar_t__ srcrt; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int EREMOTE ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_MAPPED ; 
 int IPV6_ADDR_MULTICAST ; 
 int IPV6_FLOWINFO_MASK ; 
 int IPV6_FLOWLABEL_MASK ; 
 int /*<<< orphan*/  LOOPBACK4_IPV6 ; 
 int SIN6_LEN_RFC2133 ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 int /*<<< orphan*/  XFRM_LOOKUP_WAIT ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 
 struct ip6_flowlabel* FUNC2 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ip6_flowlabel*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 struct inet_sock* FUNC6 (struct sock*) ; 
 int FUNC7 (struct sock*,struct sockaddr*,int) ; 
 int FUNC8 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int FUNC9 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct dst_entry*,struct in6_addr*,struct in6_addr*) ; 
 scalar_t__ FUNC11 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC12 (struct in6_addr*,struct in6_addr*) ; 
 scalar_t__ FUNC13 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC14 (struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct in6_addr*) ; 
 scalar_t__ FUNC16 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC17 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,struct flowi*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 

int FUNC20(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct sockaddr_in6	*usin = (struct sockaddr_in6 *) uaddr;
	struct inet_sock      	*inet = FUNC6(sk);
	struct ipv6_pinfo      	*np = FUNC5(sk);
	struct in6_addr		*daddr, *final_p = NULL, final;
	struct dst_entry	*dst;
	struct flowi		fl;
	struct ip6_flowlabel	*flowlabel = NULL;
	int			addr_type;
	int			err;

	if (usin->sin6_family == AF_INET) {
		if (FUNC0(sk))
			return -EAFNOSUPPORT;
		err = FUNC7(sk, uaddr, addr_len);
		goto ipv4_connected;
	}

	if (addr_len < SIN6_LEN_RFC2133)
		return -EINVAL;

	if (usin->sin6_family != AF_INET6)
		return -EAFNOSUPPORT;

	FUNC17(&fl, 0, sizeof(fl));
	if (np->sndflow) {
		fl.fl6_flowlabel = usin->sin6_flowinfo&IPV6_FLOWINFO_MASK;
		if (fl.fl6_flowlabel&IPV6_FLOWLABEL_MASK) {
			flowlabel = FUNC2(sk, fl.fl6_flowlabel);
			if (flowlabel == NULL)
				return -EINVAL;
			FUNC12(&usin->sin6_addr, &flowlabel->dst);
		}
	}

	addr_type = FUNC15(&usin->sin6_addr);

	if (addr_type == IPV6_ADDR_ANY) {
		/*
		 *	connect to self
		 */
		usin->sin6_addr.s6_addr[15] = 0x01;
	}

	daddr = &usin->sin6_addr;

	if (addr_type == IPV6_ADDR_MAPPED) {
		struct sockaddr_in sin;

		if (FUNC0(sk)) {
			err = -ENETUNREACH;
			goto out;
		}
		sin.sin_family = AF_INET;
		sin.sin_addr.s_addr = daddr->s6_addr32[3];
		sin.sin_port = usin->sin6_port;

		err = FUNC7(sk,
					   (struct sockaddr*) &sin,
					   sizeof(sin));

ipv4_connected:
		if (err)
			goto out;

		FUNC14(&np->daddr, 0, 0, FUNC4(0x0000ffff), inet->daddr);

		if (FUNC11(&np->saddr) ||
		    FUNC16(&np->saddr)) {
			FUNC14(&np->saddr, 0, 0, FUNC4(0x0000ffff),
				      inet->saddr);
		}

		if (FUNC11(&np->rcv_saddr) ||
		    FUNC16(&np->rcv_saddr)) {
			FUNC14(&np->rcv_saddr, 0, 0, FUNC4(0x0000ffff),
				      inet->rcv_saddr);
		}
		goto out;
	}

	if (addr_type&IPV6_ADDR_LINKLOCAL) {
		if (addr_len >= sizeof(struct sockaddr_in6) &&
		    usin->sin6_scope_id) {
			if (sk->sk_bound_dev_if &&
			    sk->sk_bound_dev_if != usin->sin6_scope_id) {
				err = -EINVAL;
				goto out;
			}
			sk->sk_bound_dev_if = usin->sin6_scope_id;
		}

		if (!sk->sk_bound_dev_if && (addr_type & IPV6_ADDR_MULTICAST))
			sk->sk_bound_dev_if = np->mcast_oif;

		/* Connect to link-local address requires an interface */
		if (!sk->sk_bound_dev_if) {
			err = -EINVAL;
			goto out;
		}
	}

	FUNC12(&np->daddr, daddr);
	np->flow_label = fl.fl6_flowlabel;

	inet->dport = usin->sin6_port;

	/*
	 *	Check for a route to destination an obtain the
	 *	destination cache for it.
	 */

	fl.proto = sk->sk_protocol;
	FUNC12(&fl.fl6_dst, &np->daddr);
	FUNC12(&fl.fl6_src, &np->saddr);
	fl.oif = sk->sk_bound_dev_if;
	fl.fl_ip_dport = inet->dport;
	fl.fl_ip_sport = inet->sport;

	if (!fl.oif && (addr_type&IPV6_ADDR_MULTICAST))
		fl.oif = np->mcast_oif;

	FUNC18(sk, &fl);

	if (flowlabel) {
		if (flowlabel->opt && flowlabel->opt->srcrt) {
			struct rt0_hdr *rt0 = (struct rt0_hdr *) flowlabel->opt->srcrt;
			FUNC12(&final, &fl.fl6_dst);
			FUNC12(&fl.fl6_dst, rt0->addr);
			final_p = &final;
		}
	} else if (np->opt && np->opt->srcrt) {
		struct rt0_hdr *rt0 = (struct rt0_hdr *)np->opt->srcrt;
		FUNC12(&final, &fl.fl6_dst);
		FUNC12(&fl.fl6_dst, rt0->addr);
		final_p = &final;
	}

	err = FUNC9(sk, &dst, &fl);
	if (err)
		goto out;
	if (final_p)
		FUNC12(&fl.fl6_dst, final_p);

	err = FUNC1(FUNC19(sk), &dst, &fl, sk, XFRM_LOOKUP_WAIT);
	if (err < 0) {
		if (err == -EREMOTE)
			err = FUNC8(sk, &dst, &fl);
		if (err < 0)
			goto out;
	}

	/* source address lookup done in ip6_dst_lookup */

	if (FUNC11(&np->saddr))
		FUNC12(&np->saddr, &fl.fl6_src);

	if (FUNC11(&np->rcv_saddr)) {
		FUNC12(&np->rcv_saddr, &fl.fl6_src);
		inet->rcv_saddr = LOOPBACK4_IPV6;
	}

	FUNC10(sk, dst,
		      FUNC13(&fl.fl6_dst, &np->daddr) ?
		      &np->daddr : NULL,
#ifdef CONFIG_IPV6_SUBTREES
		      ipv6_addr_equal(&fl.fl6_src, &np->saddr) ?
		      &np->saddr :
#endif
		      NULL);

	sk->sk_state = TCP_ESTABLISHED;
out:
	FUNC3(flowlabel);
	return err;
}