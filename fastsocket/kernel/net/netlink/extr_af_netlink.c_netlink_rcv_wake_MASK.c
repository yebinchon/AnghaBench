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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct netlink_sock {int /*<<< orphan*/  wait; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct netlink_sock* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct sock *sk)
{
	struct netlink_sock *nlk = FUNC1(sk);

	if (FUNC2(&sk->sk_receive_queue))
		FUNC0(0, &nlk->state);
	if (!FUNC3(0, &nlk->state))
		FUNC4(&nlk->wait);
}