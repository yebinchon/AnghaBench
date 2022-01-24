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
struct sock {int sk_family; int /*<<< orphan*/  sk_wmem_alloc; struct proto* sk_prot_creator; struct proto* sk_prot; } ;
struct proto {int dummy; } ;
struct net {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 struct sock* FUNC2 (struct proto*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

struct sock *FUNC7(struct net *net, int family, gfp_t priority,
		      struct proto *prot)
{
	struct sock *sk;

	sk = FUNC2(prot, priority | __GFP_ZERO, family);
	if (sk) {
		sk->sk_family = family;
		/*
		 * See comment in struct sock definition to understand
		 * why we need sk_prot_creator -acme
		 */
		sk->sk_prot = sk->sk_prot_creator = prot;
		FUNC3(sk);
		FUNC4(sk, FUNC1(net));
		FUNC0(&sk->sk_wmem_alloc, 1);

		FUNC5(sk);
		FUNC6(sk);
	}

	return sk;
}