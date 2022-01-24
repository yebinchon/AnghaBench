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
struct sock {int /*<<< orphan*/  sk_omem_alloc; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ imr_multiaddr; int /*<<< orphan*/  imr_ifindex; } ;
struct ip_mc_socklist {int /*<<< orphan*/  rcu; TYPE_2__ multi; int /*<<< orphan*/  next; } ;
struct inet_sock {struct ip_mc_socklist* mc_list; } ;
struct in_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 struct in_device* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct in_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct ip_mc_socklist*,struct in_device*) ; 
 int /*<<< orphan*/  ip_mc_socklist_reclaim ; 
 int /*<<< orphan*/  FUNC7 (struct ip_mc_socklist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct net* FUNC10 (struct sock*) ; 

void FUNC11(struct sock *sk)
{
	struct inet_sock *inet = FUNC3(sk);
	struct ip_mc_socklist *iml;
	struct net *net = FUNC10(sk);

	if (inet->mc_list == NULL)
		return;

	FUNC8();
	while ((iml = inet->mc_list) != NULL) {
		struct in_device *in_dev;
		FUNC7(inet->mc_list, iml->next);

		in_dev = FUNC4(net, iml->multi.imr_ifindex);
		(void) FUNC6(sk, iml, in_dev);
		if (in_dev != NULL) {
			FUNC5(in_dev, iml->multi.imr_multiaddr.s_addr);
			FUNC2(in_dev);
		}
		/* decrease mem now to avoid the memleak warning */
		FUNC0(sizeof(*iml), &sk->sk_omem_alloc);
		FUNC1(&iml->rcu, ip_mc_socklist_reclaim);
	}
	FUNC9();
}