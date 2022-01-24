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
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_sleep; } ;
struct llc_sock {int /*<<< orphan*/  p_flag; int /*<<< orphan*/  remote_busy_flag; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct llc_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sock*,long*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC7(struct sock *sk, long timeout)
{
	FUNC0(wait);
	struct llc_sock *llc = FUNC3(sk);
	int rc;

	while (1) {
		FUNC4(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
		rc = 0;
		if (FUNC6(sk, &timeout,
				  (sk->sk_shutdown & RCV_SHUTDOWN) ||
				  (!FUNC2(llc->state) &&
				   !llc->remote_busy_flag &&
				   !llc->p_flag)))
			break;
		rc = -ERESTARTSYS;
		if (FUNC5(current))
			break;
		rc = -EAGAIN;
		if (!timeout)
			break;
	}
	FUNC1(sk->sk_sleep, &wait);
	return rc;
}