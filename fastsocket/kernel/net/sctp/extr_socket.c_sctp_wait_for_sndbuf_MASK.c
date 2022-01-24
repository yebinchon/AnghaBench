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
struct sock {scalar_t__ sk_err; } ;
struct TYPE_2__ {struct sock* sk; scalar_t__ dead; } ;
struct sctp_association {scalar_t__ state; int /*<<< orphan*/  wait; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sctp_association*,long,size_t) ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_PENDING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 size_t FUNC10 (struct sctp_association*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC13(struct sctp_association *asoc, long *timeo_p,
				size_t msg_len)
{
	struct sock *sk = asoc->base.sk;
	int err = 0;
	long current_timeo = *timeo_p;
	FUNC1(wait);

	FUNC2("wait_for_sndbuf: asoc=%p, timeo=%ld, msg_len=%zu\n",
			  asoc, (long)(*timeo_p), msg_len);

	/* Increment the association's refcnt.  */
	FUNC6(asoc);

	/* Wait on the association specific sndbuf space. */
	for (;;) {
		FUNC4(&asoc->wait, &wait,
					  TASK_INTERRUPTIBLE);
		if (!*timeo_p)
			goto do_nonblock;
		if (sk->sk_err || asoc->state >= SCTP_STATE_SHUTDOWN_PENDING ||
		    asoc->base.dead)
			goto do_error;
		if (FUNC11(current))
			goto do_interrupted;
		if (msg_len <= FUNC10(asoc))
			break;

		/* Let another process have a go.  Since we are going
		 * to sleep anyway.
		 */
		FUNC9(sk);
		current_timeo = FUNC5(current_timeo);
		FUNC0(sk != asoc->base.sk);
		FUNC8(sk);

		*timeo_p = current_timeo;
	}

out:
	FUNC3(&asoc->wait, &wait);

	/* Release the association's refcnt.  */
	FUNC7(asoc);

	return err;

do_error:
	err = -EPIPE;
	goto out;

do_interrupted:
	err = FUNC12(*timeo_p);
	goto out;

do_nonblock:
	err = -EAGAIN;
	goto out;
}