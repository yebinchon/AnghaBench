#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_4__ {TYPE_1__* ep; } ;
struct TYPE_3__ {int /*<<< orphan*/  asocs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  LISTENING ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 TYPE_2__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct sock*) ; 
 int FUNC12 (long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC13(struct sock * sk, int *err, long *timeo_p)
{
	int error;
	FUNC0(wait);

	FUNC3(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

	/* Socket errors? */
	error = FUNC11(sk);
	if (error)
		goto out;

	if (!FUNC10(&sk->sk_receive_queue))
		goto ready;

	/* Socket shut down?  */
	if (sk->sk_shutdown & RCV_SHUTDOWN)
		goto out;

	/* Sequenced packets can come disconnected.  If so we report the
	 * problem.
	 */
	error = -ENOTCONN;

	/* Is there a good reason to think that we may receive some data?  */
	if (FUNC2(&FUNC7(sk)->ep->asocs) && !FUNC8(sk, LISTENING))
		goto out;

	/* Handle signals.  */
	if (FUNC9(current))
		goto interrupted;

	/* Let another process have a go.  Since we are going to sleep
	 * anyway.  Note: This may cause odd behaviors if the message
	 * does not fit in the user's buffer, but this seems to be the
	 * only way to honor MSG_DONTWAIT realistically.
	 */
	FUNC6(sk);
	*timeo_p = FUNC4(*timeo_p);
	FUNC5(sk);

ready:
	FUNC1(sk->sk_sleep, &wait);
	return 0;

interrupted:
	error = FUNC12(*timeo_p);

out:
	FUNC1(sk->sk_sleep, &wait);
	*err = error;
	return error;
}