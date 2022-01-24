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
struct socket {struct sock* sk; } ;
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  econet_destroy_timer ; 
 int /*<<< orphan*/  econet_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  econet_sklist ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

__attribute__((used)) static int FUNC9(struct socket *sock)
{
	struct sock *sk;

	FUNC2(&econet_mutex);

	sk = sock->sk;
	if (!sk)
		goto out_unlock;

	FUNC1(&econet_sklist, sk);

	/*
	 *	Now the socket is dead. No more input will appear.
	 */

	sk->sk_state_change(sk);	/* It is useless. Just for sanity. */

	FUNC7(sk);

	/* Purge queues */

	FUNC6(&sk->sk_receive_queue);

	if (FUNC5(sk)) {
		sk->sk_timer.data     = (unsigned long)sk;
		sk->sk_timer.expires  = jiffies + HZ;
		sk->sk_timer.function = econet_destroy_timer;
		FUNC0(&sk->sk_timer);

		goto out_unlock;
	}

	FUNC4(sk);

out_unlock:
	FUNC3(&econet_mutex);
	return 0;
}