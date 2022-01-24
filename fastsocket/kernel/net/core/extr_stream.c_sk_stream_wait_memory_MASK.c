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
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_write_pending; scalar_t__ sk_err; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EPIPE ; 
 int HZ ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,long*,int) ; 
 int FUNC9 (long) ; 
 int /*<<< orphan*/  wait ; 

int FUNC10(struct sock *sk, long *timeo_p)
{
	int err = 0;
	long vm_wait = 0;
	long current_timeo = *timeo_p;
	FUNC0(wait);

	if (FUNC7(sk))
		current_timeo = vm_wait = (FUNC3() % (HZ / 5)) + 2;

	while (1) {
		FUNC5(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);

		FUNC4(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

		if (sk->sk_err || (sk->sk_shutdown & SEND_SHUTDOWN))
			goto do_error;
		if (!*timeo_p)
			goto do_nonblock;
		if (FUNC6(current))
			goto do_interrupted;
		FUNC1(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);
		if (FUNC7(sk) && !vm_wait)
			break;

		FUNC5(SOCK_NOSPACE, &sk->sk_socket->flags);
		sk->sk_write_pending++;
		FUNC8(sk, &current_timeo, !sk->sk_err &&
						  !(sk->sk_shutdown & SEND_SHUTDOWN) &&
						  FUNC7(sk) &&
						  vm_wait);
		sk->sk_write_pending--;

		if (vm_wait) {
			vm_wait -= current_timeo;
			current_timeo = *timeo_p;
			if (current_timeo != MAX_SCHEDULE_TIMEOUT &&
			    (current_timeo -= vm_wait) < 0)
				current_timeo = 0;
			vm_wait = 0;
		}
		*timeo_p = current_timeo;
	}
out:
	FUNC2(sk->sk_sleep, &wait);
	return err;

do_error:
	err = -EPIPE;
	goto out;
do_nonblock:
	err = -EAGAIN;
	goto out;
do_interrupted:
	err = FUNC9(*timeo_p);
	goto out;
}