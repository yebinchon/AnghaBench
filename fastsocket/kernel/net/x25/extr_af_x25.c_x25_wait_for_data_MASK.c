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
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC6 (long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC9(struct sock *sk, long timeout)
{
	FUNC0(wait, current);
	int rc = 0;

	FUNC2(sk->sk_sleep, &wait);
	for (;;) {
		FUNC1(TASK_INTERRUPTIBLE);
		if (sk->sk_shutdown & RCV_SHUTDOWN)
			break;
		rc = -ERESTARTSYS;
		if (FUNC7(current))
			break;
		rc = -EAGAIN;
		if (!timeout)
			break;
		rc = 0;
		if (FUNC8(&sk->sk_receive_queue)) {
			FUNC4(sk);
			timeout = FUNC6(timeout);
			FUNC3(sk);
		} else
			break;
	}
	FUNC1(TASK_RUNNING);
	FUNC5(sk->sk_sleep, &wait);
	return rc;
}