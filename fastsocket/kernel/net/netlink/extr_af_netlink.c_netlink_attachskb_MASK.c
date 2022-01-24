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
struct sock {scalar_t__ sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {int dummy; } ;
struct netlink_sock {int /*<<< orphan*/  wait; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct netlink_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC9 (long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC13 (long) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

int FUNC16(struct sock *sk, struct sk_buff *skb,
		      long *timeo, struct sock *ssk)
{
	struct netlink_sock *nlk;

	nlk = FUNC7(sk);

	if (FUNC3(&sk->sk_rmem_alloc) > sk->sk_rcvbuf ||
	    FUNC15(0, &nlk->state)) {
		FUNC0(wait, current);
		if (!*timeo) {
			if (!ssk || FUNC5(ssk))
				FUNC6(sk);
			FUNC14(sk);
			FUNC4(skb);
			return -EAGAIN;
		}

		FUNC1(TASK_INTERRUPTIBLE);
		FUNC2(&nlk->wait, &wait);

		if ((FUNC3(&sk->sk_rmem_alloc) > sk->sk_rcvbuf ||
		     FUNC15(0, &nlk->state)) &&
		    !FUNC12(sk, SOCK_DEAD))
			*timeo = FUNC9(*timeo);

		FUNC1(TASK_RUNNING);
		FUNC8(&nlk->wait, &wait);
		FUNC14(sk);

		if (FUNC10(current)) {
			FUNC4(skb);
			return FUNC13(*timeo);
		}
		return 1;
	}
	FUNC11(skb, sk);
	return 0;
}