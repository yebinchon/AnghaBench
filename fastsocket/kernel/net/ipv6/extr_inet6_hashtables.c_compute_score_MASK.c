#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_family; int sk_bound_dev_if; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  rcv_saddr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {unsigned short const num; } ;

/* Variables and functions */
 scalar_t__ PF_INET6 ; 
 struct ipv6_pinfo* FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static int inline FUNC6(struct sock *sk, struct net *net,
				const unsigned short hnum,
				const struct in6_addr *daddr,
				const int dif)
{
	int score = -1;

	if (FUNC4(FUNC5(sk), net) && FUNC1(sk)->num == hnum &&
	    sk->sk_family == PF_INET6) {
		const struct ipv6_pinfo *np = FUNC0(sk);

		score = 1;
		if (!FUNC2(&np->rcv_saddr)) {
			if (!FUNC3(&np->rcv_saddr, daddr))
				return -1;
			score++;
		}
		if (sk->sk_bound_dev_if) {
			if (sk->sk_bound_dev_if != dif)
				return -1;
			score++;
		}
	}
	return score;
}