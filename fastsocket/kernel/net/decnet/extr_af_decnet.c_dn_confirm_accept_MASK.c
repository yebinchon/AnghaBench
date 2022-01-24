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
struct sock {TYPE_1__* sk_socket; int /*<<< orphan*/  sk_sleep; } ;
struct dn_scp {scalar_t__ state; int /*<<< orphan*/  segsize_loc; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DN_CC ; 
 scalar_t__ DN_CR ; 
 scalar_t__ DN_RUN ; 
 struct dn_scp* FUNC1 (struct sock*) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  RTAX_ADVMSS ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 long FUNC9 (long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sock*) ; 
 int FUNC12 (long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC13(struct sock *sk, long *timeo, gfp_t allocation)
{
	struct dn_scp *scp = FUNC1(sk);
	FUNC0(wait);
	int err;

	if (scp->state != DN_CR)
		return -EINVAL;

	scp->state = DN_CC;
	scp->segsize_loc = FUNC4(FUNC2(sk), RTAX_ADVMSS);
	FUNC3(sk, allocation);

	FUNC7(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
	for(;;) {
		FUNC8(sk);
		if (scp->state == DN_CC)
			*timeo = FUNC9(*timeo);
		FUNC6(sk);
		err = 0;
		if (scp->state == DN_RUN)
			break;
		err = FUNC11(sk);
		if (err)
			break;
		err = FUNC12(*timeo);
		if (FUNC10(current))
			break;
		err = -EAGAIN;
		if (!*timeo)
			break;
		FUNC7(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
	}
	FUNC5(sk->sk_sleep, &wait);
	if (err == 0) {
		sk->sk_socket->state = SS_CONNECTED;
	} else if (scp->state != DN_CC) {
		sk->sk_socket->state = SS_UNCONNECTED;
	}
	return err;
}