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
struct unix_sock {int /*<<< orphan*/  peer_wait; } ;
struct sock {int sk_shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 struct unix_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static long FUNC8(struct sock *other, long timeo)
{
	struct unix_sock *u = FUNC6(other);
	int sched;
	FUNC0(wait);

	FUNC2(&u->peer_wait, &wait, TASK_INTERRUPTIBLE);

	sched = !FUNC4(other, SOCK_DEAD) &&
		!(other->sk_shutdown & RCV_SHUTDOWN) &&
		FUNC5(other);

	FUNC7(other);

	if (sched)
		timeo = FUNC3(timeo);

	FUNC1(&u->peer_wait, &wait);
	return timeo;
}