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
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_route_caps; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct TYPE_5__ {int /*<<< orphan*/  dst; } ;
struct rtable {int rt_flags; scalar_t__ rt_dst; scalar_t__ rt_src; TYPE_2__ u; } ;
struct ip_options {scalar_t__ faddr; scalar_t__ optlen; scalar_t__ srr; } ;
struct inet_sock {scalar_t__ saddr; scalar_t__ rcv_saddr; int id; scalar_t__ dport; int /*<<< orphan*/  sport; scalar_t__ daddr; int /*<<< orphan*/  opt; } ;
struct dccp_sock {int dccps_iss; int /*<<< orphan*/  dccps_role; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_6__ {scalar_t__ icsk_ext_hdr_len; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  DCCP_CLOSED ; 
 int /*<<< orphan*/  DCCP_REQUESTING ; 
 int /*<<< orphan*/  DCCP_ROLE_CLIENT ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 int RTCF_BROADCAST ; 
 int RTCF_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  dccp_death_row ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 struct dccp_sock* FUNC3 (struct sock*) ; 
 TYPE_3__* FUNC4 (struct sock*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct sock*) ; 
 struct inet_sock* FUNC6 (struct sock*) ; 
 int FUNC7 (struct rtable**,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct sock*,int) ; 
 int FUNC8 (struct rtable**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtable*) ; 
 int jiffies ; 
 struct ip_options* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ *) ; 

int FUNC13(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct inet_sock *inet = FUNC6(sk);
	struct dccp_sock *dp = FUNC3(sk);
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
	inet_opt = FUNC10(inet->opt);
	if (inet_opt != NULL && inet_opt->srr) {
		if (daddr == 0)
			return -EINVAL;
		nexthop = inet_opt->faddr;
	}

	tmp = FUNC7(&rt, nexthop, inet->saddr,
			       FUNC0(sk), sk->sk_bound_dev_if,
			       IPPROTO_DCCP,
			       inet->sport, usin->sin_port, sk, 1);
	if (tmp < 0)
		return tmp;

	if (rt->rt_flags & (RTCF_MULTICAST | RTCF_BROADCAST)) {
		FUNC9(rt);
		return -ENETUNREACH;
	}

	if (inet_opt == NULL || !inet_opt->srr)
		daddr = rt->rt_dst;

	if (inet->saddr == 0)
		inet->saddr = rt->rt_src;
	inet->rcv_saddr = inet->saddr;

	inet->dport = usin->sin_port;
	inet->daddr = daddr;

	FUNC4(sk)->icsk_ext_hdr_len = 0;
	if (inet_opt != NULL)
		FUNC4(sk)->icsk_ext_hdr_len = inet_opt->optlen;
	/*
	 * Socket identity is still unknown (sport may be zero).
	 * However we set state to DCCP_REQUESTING and not releasing socket
	 * lock select source port, enter ourselves into the hash tables and
	 * complete initialization after this.
	 */
	FUNC2(sk, DCCP_REQUESTING);
	err = FUNC5(&dccp_death_row, sk);
	if (err != 0)
		goto failure;

	err = FUNC8(&rt, IPPROTO_DCCP, inet->sport, inet->dport,
				sk);
	if (err != 0)
		goto failure;

	/* OK, now commit destination to socket.  */
	FUNC12(sk, &rt->u.dst);

	dp->dccps_iss = FUNC11(inet->saddr, inet->daddr,
						    inet->sport, inet->dport);
	inet->id = dp->dccps_iss ^ jiffies;

	err = FUNC1(sk);
	rt = NULL;
	if (err != 0)
		goto failure;
out:
	return err;
failure:
	/*
	 * This unhashes the socket and releases the local port, if necessary.
	 */
	FUNC2(sk, DCCP_CLOSED);
	FUNC9(rt);
	sk->sk_route_caps = 0;
	inet->dport = 0;
	goto out;
}