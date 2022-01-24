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
struct sock {int sk_sndbuf; int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_wmem_alloc; } ;

/* Variables and functions */
 int POLLOUT ; 
 int POLLWRBAND ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int /*<<< orphan*/  SOCK_WAKE_SPACE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	FUNC1(&sk->sk_callback_lock);

	/* Do not wake up a writer until he can make "significant"
	 * progress.  --DaveM
	 */
	if ((FUNC0(&sk->sk_wmem_alloc) << 1) <= sk->sk_sndbuf) {
		if (FUNC3(sk))
			FUNC6(sk->sk_sleep, POLLOUT |
						POLLWRNORM | POLLWRBAND);

		/* Should agree with poll, otherwise some programs break */
		if (FUNC5(sk))
			FUNC4(sk, SOCK_WAKE_SPACE, POLL_OUT);
	}

	FUNC2(&sk->sk_callback_lock);
}