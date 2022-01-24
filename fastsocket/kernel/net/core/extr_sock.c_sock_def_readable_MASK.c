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
 int POLLIN ; 
 int POLLPRI ; 
 int POLLRDBAND ; 
 int POLLRDNORM ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SOCK_WAKE_WAITD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, int len)
{
	FUNC0(&sk->sk_callback_lock);
	if (FUNC2(sk))
		FUNC4(sk->sk_sleep, POLLIN | POLLPRI |
						POLLRDNORM | POLLRDBAND);
	FUNC3(sk, SOCK_WAKE_WAITD, POLL_IN);
	FUNC1(&sk->sk_callback_lock);
}