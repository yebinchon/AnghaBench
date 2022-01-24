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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_sleep; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC9(struct sock *sk)
{
	FUNC0(wait, current);
	int rc;

	FUNC2(sk->sk_sleep, &wait);
	for (;;) {
		FUNC1(TASK_INTERRUPTIBLE);
		rc = -ERESTARTSYS;
		if (FUNC7(current))
			break;
		rc = FUNC8(sk);
		if (rc) {
			sk->sk_socket->state = SS_UNCONNECTED;
			break;
		}
		rc = 0;
		if (sk->sk_state != TCP_ESTABLISHED) {
			FUNC4(sk);
			FUNC6();
			FUNC3(sk);
		} else
			break;
	}
	FUNC1(TASK_RUNNING);
	FUNC5(sk->sk_sleep, &wait);
	return rc;
}