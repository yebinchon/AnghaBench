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
struct sock {int sk_state; int /*<<< orphan*/  sk_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sock*) ; 
 int FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  wait ; 

int FUNC11(struct sock *sk, int state, unsigned long timeo)
{
	FUNC1(wait, current);
	int err = 0;

	FUNC0("sk %p", sk);

	FUNC2(sk->sk_sleep, &wait);
	while (sk->sk_state != state) {
		FUNC7(TASK_INTERRUPTIBLE);

		if (!timeo) {
			err = -EINPROGRESS;
			break;
		}

		if (FUNC8(current)) {
			err = FUNC10(timeo);
			break;
		}

		FUNC4(sk);
		timeo = FUNC6(timeo);
		FUNC3(sk);

		err = FUNC9(sk);
		if (err)
			break;
	}
	FUNC7(TASK_RUNNING);
	FUNC5(sk->sk_sleep, &wait);
	return err;
}