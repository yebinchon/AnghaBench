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
struct task_struct {int dummy; } ;
struct sock {int sk_state; int /*<<< orphan*/  sk_write_pending; int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EPIPE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int TCPF_CLOSE_WAIT ; 
 int TCPF_ESTABLISHED ; 
 int TCPF_SYN_RECV ; 
 int TCPF_SYN_SENT ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 int FUNC4 (struct sock*,long*,int) ; 
 int FUNC5 (struct sock*) ; 
 int FUNC6 (long) ; 
 int /*<<< orphan*/  wait ; 

int FUNC7(struct sock *sk, long *timeo_p)
{
	struct task_struct *tsk = current;
	FUNC0(wait);
	int done;

	do {
		int err = FUNC5(sk);
		if (err)
			return err;
		if ((1 << sk->sk_state) & ~(TCPF_SYN_SENT | TCPF_SYN_RECV))
			return -EPIPE;
		if (!*timeo_p)
			return -EAGAIN;
		if (FUNC3(tsk))
			return FUNC6(*timeo_p);

		FUNC2(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
		sk->sk_write_pending++;
		done = FUNC4(sk, timeo_p,
				     !sk->sk_err &&
				     !((1 << sk->sk_state) &
				       ~(TCPF_ESTABLISHED | TCPF_CLOSE_WAIT)));
		FUNC1(sk->sk_sleep, &wait);
		sk->sk_write_pending--;
	} while (!done);
	return 0;
}