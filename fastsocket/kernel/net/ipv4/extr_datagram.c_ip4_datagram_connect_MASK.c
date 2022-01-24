#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_bound_dev_if; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; } ;
struct rtable {int rt_flags; TYPE_2__ u; int /*<<< orphan*/  rt_dst; scalar_t__ rt_src; } ;
struct inet_sock {int mc_index; int /*<<< orphan*/  id; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; scalar_t__ rcv_saddr; scalar_t__ saddr; int /*<<< orphan*/  sport; scalar_t__ mc_addr; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EACCES ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RTCF_BROADCAST ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  SOCK_BROADCAST ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 struct inet_sock* FUNC2 (struct sock*) ; 
 int FUNC3 (struct rtable**,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtable*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

int FUNC10(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct inet_sock *inet = FUNC2(sk);
	struct sockaddr_in *usin = (struct sockaddr_in *) uaddr;
	struct rtable *rt;
	__be32 saddr;
	int oif;
	int err;


	if (addr_len < sizeof(*usin))
		return -EINVAL;

	if (usin->sin_family != AF_INET)
		return -EAFNOSUPPORT;

	FUNC6(sk);

	oif = sk->sk_bound_dev_if;
	saddr = inet->saddr;
	if (FUNC5(usin->sin_addr.s_addr)) {
		if (!oif)
			oif = inet->mc_index;
		if (!saddr)
			saddr = inet->mc_addr;
	}
	err = FUNC3(&rt, usin->sin_addr.s_addr, saddr,
			       FUNC1(sk), oif,
			       sk->sk_protocol,
			       inet->sport, usin->sin_port, sk, 1);
	if (err) {
		if (err == -ENETUNREACH)
			FUNC0(FUNC9(sk), IPSTATS_MIB_OUTNOROUTES);
		return err;
	}

	if ((rt->rt_flags & RTCF_BROADCAST) && !FUNC8(sk, SOCK_BROADCAST)) {
		FUNC4(rt);
		return -EACCES;
	}
	if (!inet->saddr)
		inet->saddr = rt->rt_src;	/* Update source address */
	if (!inet->rcv_saddr)
		inet->rcv_saddr = rt->rt_src;
	inet->daddr = rt->rt_dst;
	inet->dport = usin->sin_port;
	sk->sk_state = TCP_ESTABLISHED;
	inet->id = jiffies;

	FUNC7(sk, &rt->u.dst);
	return(0);
}