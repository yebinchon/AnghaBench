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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int TCPF_SYN_RECV ; 
 int TCPF_SYN_SENT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 long FUNC5 (long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static long FUNC7(struct sock *sk, long timeo)
{
	FUNC0(wait);

	FUNC3(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

	/* Basic assumption: if someone sets sk->sk_err, he _must_
	 * change state of the socket from TCP_SYN_*.
	 * Connect() does not allow to get error notifications
	 * without closing the socket.
	 */
	while ((1 << sk->sk_state) & (TCPF_SYN_SENT | TCPF_SYN_RECV)) {
		FUNC4(sk);
		timeo = FUNC5(timeo);
		FUNC2(sk);
		if (FUNC6(current) || !timeo)
			break;
		FUNC3(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
	}
	FUNC1(sk->sk_sleep, &wait);
	return timeo;
}