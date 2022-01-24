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
struct sock {size_t sk_protocol; } ;
struct netlink_sock {unsigned int subscriptions; } ;
struct TYPE_2__ {int /*<<< orphan*/  mc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_1__* nl_table ; 
 struct netlink_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct sock *sk, unsigned int subscriptions)
{
	struct netlink_sock *nlk = FUNC1(sk);

	if (nlk->subscriptions && !subscriptions)
		FUNC0(sk);
	else if (!nlk->subscriptions && subscriptions)
		FUNC2(sk, &nl_table[sk->sk_protocol].mc_list);
	nlk->subscriptions = subscriptions;
}