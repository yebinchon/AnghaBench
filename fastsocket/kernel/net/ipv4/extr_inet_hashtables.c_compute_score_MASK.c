#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock {scalar_t__ sk_family; int sk_bound_dev_if; } ;
struct net {int dummy; } ;
struct inet_sock {unsigned short const num; scalar_t__ rcv_saddr; } ;
typedef  scalar_t__ const __be32 ;

/* Variables and functions */
 scalar_t__ PF_INET ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static inline int FUNC4(struct sock *sk, struct net *net,
				const unsigned short hnum, const __be32 daddr,
				const int dif)
{
	int score = -1;
	struct inet_sock *inet = FUNC0(sk);
	//int processor_id = smp_processor_id();

	if (FUNC2(FUNC3(sk), net) && inet->num == hnum &&
			!FUNC1(sk)) {
		__be32 rcv_saddr = inet->rcv_saddr;
		score = sk->sk_family == PF_INET ? 2 : 1;
		if (rcv_saddr) {
			if (rcv_saddr != daddr)
				return -1;
			score += 4;
		}
		if (sk->sk_bound_dev_if) {
			if (sk->sk_bound_dev_if != dif)
				return -1;
			score += 4;
		}

		//if (sk->sk_cpumask == 0)
		//	score++;

		//if (sk->sk_cpumask & ((unsigned long)1 << processor_id))
		//	score += 2;
	}
	return score;
}