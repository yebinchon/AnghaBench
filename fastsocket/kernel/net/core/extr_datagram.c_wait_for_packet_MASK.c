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
struct sock {int sk_shutdown; scalar_t__ sk_state; int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOTCONN ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ TCP_LISTEN ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  receiver_wake_function ; 
 long FUNC4 (long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sock*) ; 
 int FUNC8 (long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC9(struct sock *sk, int *err, long *timeo_p)
{
	int error;
	FUNC0(wait, receiver_wake_function);

	FUNC3(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

	/* Socket errors? */
	error = FUNC7(sk);
	if (error)
		goto out_err;

	if (!FUNC6(&sk->sk_receive_queue))
		goto out;

	/* Socket shut down? */
	if (sk->sk_shutdown & RCV_SHUTDOWN)
		goto out_noerr;

	/* Sequenced packets can come disconnected.
	 * If so we report the problem
	 */
	error = -ENOTCONN;
	if (FUNC1(sk) &&
	    !(sk->sk_state == TCP_ESTABLISHED || sk->sk_state == TCP_LISTEN))
		goto out_err;

	/* handle signals */
	if (FUNC5(current))
		goto interrupted;

	error = 0;
	*timeo_p = FUNC4(*timeo_p);
out:
	FUNC2(sk->sk_sleep, &wait);
	return error;
interrupted:
	error = FUNC8(*timeo_p);
out_err:
	*err = error;
	goto out;
out_noerr:
	*err = 0;
	error = 1;
	goto out;
}