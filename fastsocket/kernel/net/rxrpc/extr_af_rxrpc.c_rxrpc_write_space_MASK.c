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
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_OUT ; 
 int /*<<< orphan*/  SOCK_WAKE_SPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	FUNC0("%p", sk);
	FUNC1(&sk->sk_callback_lock);
	if (FUNC3(sk)) {
		if (FUNC4(sk))
			FUNC6(sk->sk_sleep);
		FUNC5(sk, SOCK_WAKE_SPACE, POLL_OUT);
	}
	FUNC2(&sk->sk_callback_lock);
}