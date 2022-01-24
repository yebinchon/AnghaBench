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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_SYN_SENT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sock*,long*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC5(struct sock *sk, long timeout)
{
	FUNC0(wait);

	while (1) {
		FUNC2(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
		if (FUNC4(sk, &timeout, sk->sk_state != TCP_SYN_SENT))
			break;
		if (FUNC3(current) || !timeout)
			break;
	}
	FUNC1(sk->sk_sleep, &wait);
	return timeout;
}