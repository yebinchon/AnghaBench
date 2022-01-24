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
struct task_struct {int dummy; } ;
struct sock {scalar_t__ sk_state; TYPE_1__* sk_socket; } ;
struct pep_sock {int /*<<< orphan*/  ackq; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_LISTEN ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct pep_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 long FUNC7 (long) ; 
 scalar_t__ FUNC8 (struct task_struct*) ; 
 int FUNC9 (long) ; 
 long FUNC10 (struct sock*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC11(struct sock *sk, int noblock)
{
	struct task_struct *tsk = current;
	struct pep_sock *pn = FUNC4(sk);
	long timeo = FUNC10(sk, noblock);

	for (;;) {
		FUNC0(wait);

		if (sk->sk_state != TCP_LISTEN)
			return -EINVAL;
		if (!FUNC2(&pn->ackq))
			break;
		if (!timeo)
			return -EWOULDBLOCK;
		if (FUNC8(tsk))
			return FUNC9(timeo);

		FUNC5(&sk->sk_socket->wait, &wait,
						TASK_INTERRUPTIBLE);
		FUNC6(sk);
		timeo = FUNC7(timeo);
		FUNC3(sk);
		FUNC1(&sk->sk_socket->wait, &wait);
	}

	return 0;
}